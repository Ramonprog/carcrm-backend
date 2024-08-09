import { Injectable } from '@nestjs/common'
import { CreateColorDto } from './dto/create-color.dto'
import { UpdateColorDto } from './dto/update-color.dto'
import { PrismaService } from 'src/prisma/prisma.service'

@Injectable()
export class ColorsService {
  constructor(private readonly prismaService: PrismaService) {}
  create(createColorDto: CreateColorDto) {
    return 'This action adds a new color'
  }

  findAll() {
    return this.prismaService.vehicleColor.findMany()
  }

  findOne(id: number) {
    return `This action returns a #${id} color`
  }

  update(id: number, updateColorDto: UpdateColorDto) {
    return `This action updates a #${id} color`
  }

  remove(id: number) {
    return `This action removes a #${id} color`
  }
}
