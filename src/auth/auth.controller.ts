import { Body, Controller, Post } from '@nestjs/common'
import { LoginDto } from './dto/login.dto'
import { AuthService } from './auth.service'

@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}

  @Post('login')
  login(@Body() dataLoginDto: LoginDto) {
    return this.authService.login(dataLoginDto)
  }

  @Post('tenant/login')
  tenantLogin(@Body() dataLoginDto: LoginDto) {
    return this.authService.tenantLogin(dataLoginDto)
  }
}
