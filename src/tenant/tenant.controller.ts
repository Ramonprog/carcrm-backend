import { Controller, Post, Body, UseGuards, Get, Query } from '@nestjs/common'
import { TenantService } from './tenant.service'
import { CreateTenantDto } from './dto/create-tenant.dto'
import { UpdateTenantDto } from './dto/update-tenant.dto'
import { AuthGuard } from 'src/auth/auth.guard'
import { ApiBody } from '@nestjs/swagger'

@Controller('tenant')
export class TenantController {
  constructor(private readonly tenantService: TenantService) {}

  @Post()
  @ApiBody({ type: CreateTenantDto })
  create(@Body() createTenantDto: CreateTenantDto) {
    return this.tenantService.create(createTenantDto)
  }

  @UseGuards(AuthGuard)
  @Get('users')
  async getUsers(@Query('tenantId') tenantId: number) {
    const parseTenantId = Number(tenantId)
    return this.tenantService.findAllUserByTenantId(parseTenantId)
  }
}
