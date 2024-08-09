// dto/create-user.dto.ts

import { ApiProperty } from '@nestjs/swagger'

export class CreateCommonUserDto {
  @ApiProperty()
  name: string

  @ApiProperty()
  email: string

  @ApiProperty()
  password: string

  @ApiProperty()
  tenant_id: number
}
