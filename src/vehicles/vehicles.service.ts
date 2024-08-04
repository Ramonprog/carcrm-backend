import { Injectable } from '@nestjs/common'
import { CreateVehicleDto } from './dto/create-vehicle.dto'
import { UpdateVehicleDto } from './dto/update-vehicle.dto'
import { PrismaService } from 'src/prisma/prisma.service'

@Injectable()
export class VehiclesService {
  constructor(private prismaService: PrismaService) {}
  create(createVehicleDto: CreateVehicleDto, tenantId: number) {
    return this.prismaService.vehicle.create({
      data: {
        ...createVehicleDto,
        tenant_id: tenantId,
      },
    })
  }

  findAll() {
    return `This action returns all vehicles`
  }

  findOne(id: number) {
    return `This action returns a #${id} vehicle`
  }

  update(id: number, updateVehicleDto: UpdateVehicleDto) {
    return `This action updates a #${id} vehicle`
  }

  remove(id: number) {
    return `This action removes a #${id} vehicle`
  }
}
