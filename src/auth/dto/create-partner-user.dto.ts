// dto/create-user.dto.ts

import { ApiProperty } from '@nestjs/swagger'

export class CreatePartnerUserDto {
  @ApiProperty()
  name: string

  @ApiProperty()
  email: string

  @ApiProperty()
  password: string
}
