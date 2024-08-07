import { Injectable } from '@nestjs/common'
import { CreateModelDto } from './dto/create-model.dto'
import { UpdateModelDto } from './dto/update-model.dto'
import { PrismaService } from 'src/prisma/prisma.service'

@Injectable()
export class ModelsService {
  constructor(private readonly prismaService: PrismaService) {}
  create(createModelDto: CreateModelDto) {
    return 'This action adds a new model'
  }

  findAll() {
    return this.prismaService.vehicleModel.findMany()
  }

  findOne(id: number) {
    return `This action returns a #${id} model`
  }

  update(id: number, updateModelDto: UpdateModelDto) {
    return `This action updates a #${id} model`
  }

  remove(id: number) {
    return `This action removes a #${id} model`
  }
}
