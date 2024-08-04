import { Module } from '@nestjs/common'
import { AppController } from './app.controller'
import { AppService } from './app.service'
import { AuthModule } from './auth/auth.module'
import { PrismaModule } from './prisma/prisma.module'
import { TenantModule } from './tenant/tenant.module'
import { VehiclesModule } from './vehicles/vehicles.module'

@Module({
  imports: [AuthModule, PrismaModule, TenantModule, VehiclesModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
