import { Module } from '@nestjs/common'
import { VehiclesService } from './vehicles.service'
import { VehiclesController } from './vehicles.controller'
import { BrandModule } from './brand/brand.module'
import { VersionsModule } from './versions/versions.module';
import { CategoryModule } from './category/category.module';
import { ModelsModule } from './models/models.module';
import { ModelsYearsModule } from './models-years/models-years.module';

@Module({
  controllers: [VehiclesController],
  providers: [VehiclesService],
  imports: [BrandModule, VersionsModule, CategoryModule, ModelsModule, ModelsYearsModule],
})
export class VehiclesModule {}
