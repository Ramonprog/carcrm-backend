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
import { BrandService } from './brand.service'
import { CreateBrandDto } from './dto/create-brand.dto'
import { UpdateBrandDto } from './dto/update-brand.dto'
import { AuthGuard } from 'src/auth/auth.guard'

@Controller('brand')
export class BrandController {
  constructor(private readonly brandService: BrandService) {}

  @Post()
  create(@Body() createBrandDto: CreateBrandDto) {
    return this.brandService.create(createBrandDto)
  }

  @UseGuards(AuthGuard)
  @Get()
  findAll() {
    return this.brandService.findAll()
  }

  @UseGuards(AuthGuard)
  @Get(':id')
  findBrandByVehicleType(@Param('id') id: string) {
    return this.brandService.findBrandByVehicleType(+id)
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateBrandDto: UpdateBrandDto) {
    return this.brandService.update(+id, updateBrandDto)
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.brandService.remove(+id)
  }
}
