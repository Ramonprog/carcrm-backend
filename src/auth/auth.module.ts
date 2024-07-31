import { Module } from '@nestjs/common'
import { UsersController } from './users/users.controller'
import { UsersService } from './users/users.service'
import { AuthController } from './auth.controller'
import { AuthService } from './auth.service'
import { JwtModule } from '@nestjs/jwt'

import { TenantModule } from 'src/tenant/tenant.module'

@Module({
  controllers: [UsersController, AuthController],
  providers: [UsersService, AuthService],
  imports: [
    JwtModule.register({
      global: true,
      secret: process.env.JWT_SECRET,
      signOptions: { expiresIn: '1d' },
    }),
    TenantModule,
  ],
})
export class AuthModule {}
