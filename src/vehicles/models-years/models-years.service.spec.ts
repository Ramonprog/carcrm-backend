import { Test, TestingModule } from '@nestjs/testing';
import { ModelsYearsService } from './models-years.service';

describe('ModelsYearsService', () => {
  let service: ModelsYearsService;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [ModelsYearsService],
    }).compile();

    service = module.get<ModelsYearsService>(ModelsYearsService);
  });

  it('should be defined', () => {
    expect(service).toBeDefined();
  });
});
