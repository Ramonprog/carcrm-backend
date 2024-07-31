import { Injectable, UnauthorizedException } from '@nestjs/common'
import { LoginDto } from './dto/login.dto'
import { UsersService } from './users/users.service'
import { JwtService } from '@nestjs/jwt'
import * as bcrypt from 'bcrypt'
import { TenantService } from 'src/tenant/tenant.service'

@Injectable()
export class AuthService {
  constructor(
    private userService: UsersService,
    private jwtService: JwtService,
    private tenantService: TenantService,
  ) {}

  async login(data: LoginDto) {
    const user = await this.userService.findOne(data.email)

    const isPasswordCorrect = bcrypt.compareSync(data.password, user.password)

    if (!user || !isPasswordCorrect) {
      throw new Error('User not found')
    }

    const { password, ...result } = user

    return {
      access_token: this.jwtService.sign(result),
    }
  }

  async tenantLogin(data: LoginDto) {
    const tenant = await this.tenantService.findOne(data.email)

    if (!tenant || !bcrypt.compareSync(data.password, tenant.password)) {
      throw new UnauthorizedException('Invalid email or password')
    }

    const { password, ...result } = tenant

    return {
      access_token: this.jwtService.sign(result),
    }
  }
}
