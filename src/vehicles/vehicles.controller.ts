import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseGuards,
  Req,
} from '@nestjs/common'
import { VehiclesService } from './vehicles.service'
import { CreateVehicleDto } from './dto/create-vehicle.dto'
import { UpdateVehicleDto } from './dto/update-vehicle.dto'
import { AuthGuard } from 'src/auth/auth.guard'

@Controller('vehicles')
export class VehiclesController {
  constructor(private readonly vehiclesService: VehiclesService) {}

  @UseGuards(AuthGuard)
  @Post()
  create(@Req() request: Request, @Body() createVehicleDto: CreateVehicleDto) {
    const tenant = request['user']

    return this.vehiclesService.create(createVehicleDto, tenant.id)
  }

  @UseGuards(AuthGuard)
  @Get()
  findAll(@Req() request: Request) {
    const tenant = request['tenant']

    return this.vehiclesService.findAll(tenant.id)
  }

  @UseGuards(AuthGuard)
  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.vehiclesService.findOne(+id)
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateVehicleDto: UpdateVehicleDto) {
    return this.vehiclesService.update(+id, updateVehicleDto)
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.vehiclesService.remove(+id)
  }
}
