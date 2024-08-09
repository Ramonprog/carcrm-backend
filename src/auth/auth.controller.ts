import { Body, Controller, Post } from '@nestjs/common'
import { LoginDto } from './dto/login.dto'
import { AuthService } from './auth.service'
import { ApiBody } from '@nestjs/swagger'

@Controller('auth')
export class AuthController {
  constructor(private authService: AuthService) {}

  @Post('login')
  @ApiBody({ type: LoginDto })
  login(@Body() dataLoginDto: LoginDto) {
    return this.authService.login(dataLoginDto)
  }

  @Post('tenant/login')
  @ApiBody({ type: LoginDto })
  tenantLogin(@Body() dataLoginDto: LoginDto) {
    return this.authService.tenantLogin(dataLoginDto)
  }
}
