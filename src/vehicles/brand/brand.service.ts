import { Injectable } from '@nestjs/common'
import { CreateBrandDto } from './dto/create-brand.dto'
import { UpdateBrandDto } from './dto/update-brand.dto'
import { PrismaService } from 'src/prisma/prisma.service'

@Injectable()
export class BrandService {
  constructor(private prismaService: PrismaService) {}
  create(createBrandDto: CreateBrandDto) {
    return 'This action adds a new brand'
  }

  findAll() {
    return this.prismaService.vehicleBrand.findMany()
  }

  findBrandByVehicleType(id: number) {
    return this.prismaService.vehicleBrand.findMany({
      where: {
        vehicle_type_id: id,
      },
    })
  }
}
