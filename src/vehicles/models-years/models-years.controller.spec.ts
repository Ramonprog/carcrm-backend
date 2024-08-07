import { Test, TestingModule } from '@nestjs/testing';
import { ModelsYearsController } from './models-years.controller';
import { ModelsYearsService } from './models-years.service';

describe('ModelsYearsController', () => {
  let controller: ModelsYearsController;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      controllers: [ModelsYearsController],
      providers: [ModelsYearsService],
    }).compile();

    controller = module.get<ModelsYearsController>(ModelsYearsController);
  });

  it('should be defined', () => {
    expect(controller).toBeDefined();
  });
});
