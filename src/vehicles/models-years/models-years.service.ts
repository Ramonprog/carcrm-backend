import { Injectable } from '@nestjs/common';
import { CreateModelsYearDto } from './dto/create-models-year.dto';
import { UpdateModelsYearDto } from './dto/update-models-year.dto';

@Injectable()
export class ModelsYearsService {
  create(createModelsYearDto: CreateModelsYearDto) {
    return 'This action adds a new modelsYear';
  }

  findAll() {
    return `This action returns all modelsYears`;
  }

  findOne(id: number) {
    return `This action returns a #${id} modelsYear`;
  }

  update(id: number, updateModelsYearDto: UpdateModelsYearDto) {
    return `This action updates a #${id} modelsYear`;
  }

  remove(id: number) {
    return `This action removes a #${id} modelsYear`;
  }
}
