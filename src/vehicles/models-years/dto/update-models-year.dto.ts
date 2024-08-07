import { PartialType } from '@nestjs/mapped-types';
import { CreateModelsYearDto } from './create-models-year.dto';

export class UpdateModelsYearDto extends PartialType(CreateModelsYearDto) {}
