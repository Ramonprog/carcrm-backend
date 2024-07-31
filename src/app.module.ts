import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { AuthModule } from './auth/auth.module';
import { PrismaModule } from './prisma/prisma.module';
import { PartinersModule } from './partiners/partiners.module';
import { PartnersModule } from './partners/partners.module';

@Module({
  imports: [AuthModule, PrismaModule, PartinersModule, PartnersModule],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
