import { Injectable } from '@nestjs/common'

@Injectable()
export class UsersService {
  create() {
    return {
      message: 'Hello World!',
    }
  }
}
