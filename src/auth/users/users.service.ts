import { Injectable } from '@nestjs/common'
import { PrismaService } from 'src/prisma/prisma.service'
import { CreatePartnerUserDto } from '../dto/create-partner-user.dto'
import { UserRoles } from '../user-roles'
import * as bcrypt from 'bcrypt'
import { CreateCommonUserDto } from '../dto/create-common-user.dto'

@Injectable()
export class UsersService {
  constructor(private prismaService: PrismaService) {}

  createPartnerUser(data: CreatePartnerUserDto) {
    return this.prismaService.user.create({
      data: {
        ...data,
        password: this.generateHash(data.password),
        roles: [UserRoles.PARTNER],
      },
      select: {
        id: true,
        name: true,
        email: true,
        roles: true,
      },
    })
  }

  generateHash(password: string) {
    return bcrypt.hashSync(password, 10)
  }

  createCommonUser(data: CreateCommonUserDto) {
    return this.prismaService.user.create({
      data: {
        ...data,
        password: this.generateHash(data.password),
        roles: [UserRoles.USER],
      },
      select: {
        id: true,
        name: true,
        email: true,
        roles: true,
      },
    })
  }
}
