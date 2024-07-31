/*
  Warnings:

  - Added the required column `password` to the `tenants` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `users_tenantId_fkey` ON `users`;

-- AlterTable
ALTER TABLE `tenants` ADD COLUMN `password` VARCHAR(191) NOT NULL,
    MODIFY `isActive` BOOLEAN NOT NULL DEFAULT false;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_tenantId_fkey` FOREIGN KEY (`tenantId`) REFERENCES `tenants`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
