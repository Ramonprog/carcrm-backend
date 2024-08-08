import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  UseGuards,
} from '@nestjs/common'
import { VersionsService } from './versions.service'
import { CreateVersionDto } from './dto/create-version.dto'
import { UpdateVersionDto } from './dto/update-version.dto'
import { AuthGuard } from 'src/auth/auth.guard'

@Controller('versions')
export class VersionsController {
  constructor(private readonly versionsService: VersionsService) {}

  @Post()
  create(@Body() createVersionDto: CreateVersionDto) {
    return this.versionsService.create(createVersionDto)
  }

  @Get()
  findAll() {
    return this.versionsService.findAll()
  }

  @UseGuards(AuthGuard)
  @Get(':id')
  findVersionByModelId(@Param('id') id: string) {
    return this.versionsService.findVersionByModelId(+id)
  }

  @Patch(':id')
  update(@Param('id') id: string, @Body() updateVersionDto: UpdateVersionDto) {
    return this.versionsService.update(+id, updateVersionDto)
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.versionsService.remove(+id)
  }
}
