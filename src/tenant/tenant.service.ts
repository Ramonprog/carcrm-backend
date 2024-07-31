import { Injectable } from '@nestjs/common'
import { CreateTenantDto } from './dto/create-tenant.dto'
import { PrismaService } from 'src/prisma/prisma.service'
import * as bcrypt from 'bcrypt'
@Injectable()
export class TenantService {
  constructor(private prismaService: PrismaService) {}

  create(createTenantDto: CreateTenantDto) {
    return this.prismaService.tenant.create({
      data: {
        ...createTenantDto,
        password: this.generateHash(createTenantDto.password),
      },
    })
  }

  generateHash(password: string) {
    return bcrypt.hashSync(password, 10)
  }

  findOne(idOrEmail: number | string) {
    return this.prismaService.tenant.findFirst({
      where: {
        OR: [
          typeof idOrEmail === 'number'
            ? { id: idOrEmail }
            : { email: idOrEmail },
        ],
      },
    })
  }

  findAllUserByTenantId(tenantId: number) {
    return this.prismaService.user.findMany({
      where: {
        tenantId,
      },
    })
  }
}
