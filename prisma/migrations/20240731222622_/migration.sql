/*
  Warnings:

  - You are about to drop the `tenant_users` table. If the table is not empty, all the data it contains will be lost.
  - A unique constraint covering the columns `[email]` on the table `tenants` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `email` to the `tenants` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tenantId` to the `users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `tenants` ADD COLUMN `address` VARCHAR(191) NULL,
    ADD COLUMN `billingInformation` JSON NULL,
    ADD COLUMN `description` VARCHAR(191) NULL,
    ADD COLUMN `email` VARCHAR(191) NOT NULL,
    ADD COLUMN `isActive` BOOLEAN NOT NULL DEFAULT true,
    ADD COLUMN `logoUrl` VARCHAR(191) NULL,
    ADD COLUMN `phone` VARCHAR(191) NULL,
    ADD COLUMN `subscriptionPlan` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `users` ADD COLUMN `tenantId` INTEGER NOT NULL;

-- DropTable
DROP TABLE `tenant_users`;

-- CreateIndex
CREATE UNIQUE INDEX `tenants_email_key` ON `tenants`(`email`);

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_tenantId_fkey` FOREIGN KEY (`tenantId`) REFERENCES `tenants`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
