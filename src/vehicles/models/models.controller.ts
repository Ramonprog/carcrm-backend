import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseGuards,
} from '@nestjs/common'
import { ModelsService } from './models.service'
import { CreateModelDto } from './dto/create-model.dto'
import { UpdateModelDto } from './dto/update-model.dto'
import { AuthGuard } from 'src/auth/auth.guard'

@Controller('models')
export class ModelsController {
  constructor(private readonly modelsService: ModelsService) {}

  @Post()
  create(@Body() createModelDto: CreateModelDto) {
    return this.modelsService.create(createModelDto)
  }

  @UseGuards(AuthGuard)
  @Get()
  findAll() {
    return this.modelsService.findAll()
  }

  @UseGuards(AuthGuard)
  @Get(':brandId')
  findModelsByBrandId(@Param('brandId') brandId: string) {
    return this.modelsService.findModelsByBrandId(+brandId)
  }
}
