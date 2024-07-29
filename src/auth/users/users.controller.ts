import { Body, Controller, Get, Post } from '@nestjs/common'
import { UsersService } from './users.service'
import { CreateCommonUserDto } from '../dto/create-common-user.dto'

@Controller('users')
export class UsersController {
  constructor(private readonly usersService: UsersService) {}

  @Post()
  create(@Body() data: CreateCommonUserDto) {
    return this.usersService.createCommonUser(data)
  }
}
