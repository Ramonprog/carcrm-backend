import { Body, Controller, Get, Post } from '@nestjs/common'
import { UsersService } from './users.service'
import { CreatePartnerUserDto } from '../dto/create-partner-user.dto'

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Post()
  create(@Body() data: CreatePartnerUserDto) {
    return this.usersService.createPartnerUser(data)
  }
}
