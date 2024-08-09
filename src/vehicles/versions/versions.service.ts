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

  findVersionByModelId(id: number) {
    return this.prismaService.vehicleVersion.findMany({
      where: {
        model_id: id,
      },
    })
  }
}
