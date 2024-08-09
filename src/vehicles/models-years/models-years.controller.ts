import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
} from '@nestjs/common'
import { ModelsYearsService } from './models-years.service'
import { CreateModelsYearDto } from './dto/create-models-year.dto'
import { UpdateModelsYearDto } from './dto/update-models-year.dto'

@Controller('models-years')
export class ModelsYearsController {
  constructor(private readonly modelsYearsService: ModelsYearsService) {}

  @Post()
  create(@Body() createModelsYearDto: CreateModelsYearDto) {
    return this.modelsYearsService.create(createModelsYearDto)
  }

  @Get()
  findAll() {
    return this.modelsYearsService.findAll()
  }
}
