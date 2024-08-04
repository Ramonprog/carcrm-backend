import { Injectable } from '@nestjs/common'
import { CreateVersionDto } from './dto/create-version.dto'
import { UpdateVersionDto } from './dto/update-version.dto'
import { PrismaService } from 'src/prisma/prisma.service'

@Injectable()
export class VersionsService {
  constructor(private prismaService: PrismaService) {}

  create(createVersionDto: CreateVersionDto) {
    return 'This action adds a new version'
  }

  findAll() {
    return this.prismaService.vehicleVersion.findMany()
  }

  findOne(id: number) {
    return `This action returns a #${id} version`
  }

  update(id: number, updateVersionDto: UpdateVersionDto) {
    return `This action updates a #${id} version`
  }

  remove(id: number) {
    return `This action removes a #${id} version`
  }
}
