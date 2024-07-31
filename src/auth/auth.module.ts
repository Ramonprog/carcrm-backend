import { Module } from '@nestjs/common'
import { UsersController } from './users/users.controller'
import { UsersService } from './users/users.service'
import { AuthController } from './auth.controller'
import { AuthService } from './auth.service'
import { JwtModule } from '@nestjs/jwt'

@Module({
  controllers: [UsersController, AuthController],
  providers: [UsersService, AuthService],
  imports: [
    JwtModule.register({
      global: true,
      secret: process.env.JWT_SECRET,
      signOptions: { expiresIn: '1d' },
    }),
  ],
})
export class AuthModule {}
