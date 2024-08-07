import { Module } from '@nestjs/common';
import { ModelsYearsService } from './models-years.service';
import { ModelsYearsController } from './models-years.controller';

@Module({
  controllers: [ModelsYearsController],
  providers: [ModelsYearsService],
})
export class ModelsYearsModule {}
