import { Body, Controller, Post } from '@nestjs/common'
import { CreatePartnerUserDto } from '../dto/create-partner-user.dto'
import { UsersService } from '../users/users.service'

@Controller('partners/users')
export class PartnerUsersController {
  constructor(private readonly usersService: UsersService) {}

  @Post()
  create(@Body() data: CreatePartnerUserDto) {
    return this.usersService.createPartnerUser(data)
  }
}
