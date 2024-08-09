import { Injectable } from '@nestjs/common'
import { CreateModelsYearDto } from './dto/create-models-year.dto'
import { UpdateModelsYearDto } from './dto/update-models-year.dto'

@Injectable()
export class ModelsYearsService {
  create(createModelsYearDto: CreateModelsYearDto) {
    return 'This action adds a new modelsYear'
  }

  findAll() {
    return `This action returns all modelsYears`
  }
}
