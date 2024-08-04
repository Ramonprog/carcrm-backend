import { Module } from '@nestjs/common'
import { VehiclesService } from './vehicles.service'
import { VehiclesController } from './vehicles.controller'
import { BrandModule } from './brand/brand.module'
import { VersionsModule } from './versions/versions.module';

@Module({
  controllers: [VehiclesController],
  providers: [VehiclesService],
  imports: [BrandModule, VersionsModule],
})
export class VehiclesModule {}
