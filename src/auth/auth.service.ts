import { Injectable } from '@nestjs/common'
import { LoginDto } from './dto/login.dto'
import { UsersService } from './users/users.service'
import { JwtService } from '@nestjs/jwt'
import * as bcrypt from 'bcrypt'

@Injectable()
export class AuthService {
  constructor(
    private userService: UsersService,
    private jwtService: JwtService,
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
}
