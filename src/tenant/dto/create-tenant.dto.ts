import { ApiProperty } from '@nestjs/swagger'
import { Tenant } from '@prisma/client'
export class CreateTenantDto {
  @ApiProperty()
  email: string

  @ApiProperty()
  password: string

  @ApiProperty()
  name: string
}
