import { Tenant } from '@prisma/client'
export class CreateTenantDto {
  email: string
  password: string
  name: string
}
