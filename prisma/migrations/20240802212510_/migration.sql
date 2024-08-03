/*
  Warnings:

  - You are about to drop the column `address` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `description` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `phone` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `subscriptionPlan` on the `tenants` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX `users_tenantId_fkey` ON `users`;

-- AlterTable
ALTER TABLE `tenants` DROP COLUMN `address`,
    DROP COLUMN `description`,
    DROP COLUMN `phone`,
    DROP COLUMN `subscriptionPlan`,
    ADD COLUMN `deletedAt` DATETIME(3) NULL,
    ADD COLUMN `disabledAccount` DATETIME(3) NULL,
    ADD COLUMN `domain` VARCHAR(191) NULL,
    ADD COLUMN `facebookPageId` VARCHAR(191) NULL,
    ADD COLUMN `facebookPixel` VARCHAR(191) NULL,
    ADD COLUMN `googleAnalytics` VARCHAR(191) NULL,
    ADD COLUMN `nextExpirationDate` DATETIME(3) NULL,
    ADD COLUMN `siteDescription` VARCHAR(191) NULL,
    ADD COLUMN `siteKeyWord` VARCHAR(191) NULL,
    ADD COLUMN `socialMedia` JSON NULL,
    ADD COLUMN `subdomain` VARCHAR(191) NULL,
    ADD COLUMN `subscriptionPlanId` INTEGER NULL,
    ADD COLUMN `title` VARCHAR(191) NULL,
    ADD COLUMN `whatsappNumber` VARCHAR(191) NULL,
    MODIFY `isActive` BOOLEAN NOT NULL DEFAULT true;

-- CreateTable
CREATE TABLE `subscription_plans` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `tenants` ADD CONSTRAINT `tenants_subscriptionPlanId_fkey` FOREIGN KEY (`subscriptionPlanId`) REFERENCES `subscription_plans`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_tenantId_fkey` FOREIGN KEY (`tenantId`) REFERENCES `tenants`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
