/*
  Warnings:

  - You are about to drop the column `motorCycleFeatures` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleBrand` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleCubiccms` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleDoors` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleFeatures` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleFinancial` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleFuel` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleGearBox` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleMileage` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleModel` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleMotorPower` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleSteering` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleType` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleVersion` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `veicleColor` on the `vehicles` table. All the data in the column will be lost.

*/
-- DropIndex
DROP INDEX `tenants_subscriptionPlanId_fkey` ON `tenants`;

-- DropIndex
DROP INDEX `users_tenantId_fkey` ON `users`;

-- DropIndex
DROP INDEX `vehicles_tenantId_fkey` ON `vehicles`;

-- AlterTable
ALTER TABLE `vehicles` DROP COLUMN `motorCycleFeatures`,
    DROP COLUMN `vehicleBrand`,
    DROP COLUMN `vehicleCubiccms`,
    DROP COLUMN `vehicleDoors`,
    DROP COLUMN `vehicleFeatures`,
    DROP COLUMN `vehicleFinancial`,
    DROP COLUMN `vehicleFuel`,
    DROP COLUMN `vehicleGearBox`,
    DROP COLUMN `vehicleMileage`,
    DROP COLUMN `vehicleModel`,
    DROP COLUMN `vehicleMotorPower`,
    DROP COLUMN `vehicleSteering`,
    DROP COLUMN `vehicleType`,
    DROP COLUMN `vehicleVersion`,
    DROP COLUMN `veicleColor`,
    ADD COLUMN `motorCycleFeaturesId` INTEGER NULL,
    ADD COLUMN `vehicleBrandId` INTEGER NULL,
    ADD COLUMN `vehicleColorId` INTEGER NULL,
    ADD COLUMN `vehicleCubiccmsId` INTEGER NULL,
    ADD COLUMN `vehicleDoorsId` INTEGER NULL,
    ADD COLUMN `vehicleFeaturesId` INTEGER NULL,
    ADD COLUMN `vehicleFinancialId` INTEGER NULL,
    ADD COLUMN `vehicleFuelId` INTEGER NULL,
    ADD COLUMN `vehicleGearBoxId` INTEGER NULL,
    ADD COLUMN `vehicleMileageId` INTEGER NULL,
    ADD COLUMN `vehicleModelId` INTEGER NULL,
    ADD COLUMN `vehicleMotorPowerId` INTEGER NULL,
    ADD COLUMN `vehicleSteeringId` INTEGER NULL,
    ADD COLUMN `vehicleTypeId` INTEGER NULL,
    ADD COLUMN `vehicleVersionId` INTEGER NULL;

-- CreateTable
CREATE TABLE `vehicle_brands` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_models` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,
    `brandId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_versions` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,
    `brandId` INTEGER NULL,
    `modelId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_registration_date` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_gear_box` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_fuel` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_steering` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_motor_power` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_doors` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_color` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_cubiccms` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_mileage` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_features` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `motor_cycle_features` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_financial` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_type` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_photos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `vehicle_exchange` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `value` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `tenants` ADD CONSTRAINT `tenants_subscriptionPlanId_fkey` FOREIGN KEY (`subscriptionPlanId`) REFERENCES `subscription_plans`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_tenantId_fkey` FOREIGN KEY (`tenantId`) REFERENCES `tenants`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_tenantId_fkey` FOREIGN KEY (`tenantId`) REFERENCES `tenants`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleBrandId_fkey` FOREIGN KEY (`vehicleBrandId`) REFERENCES `vehicle_brands`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleModelId_fkey` FOREIGN KEY (`vehicleModelId`) REFERENCES `vehicle_models`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleVersionId_fkey` FOREIGN KEY (`vehicleVersionId`) REFERENCES `vehicle_versions`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleGearBoxId_fkey` FOREIGN KEY (`vehicleGearBoxId`) REFERENCES `vehicle_gear_box`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleFuelId_fkey` FOREIGN KEY (`vehicleFuelId`) REFERENCES `vehicle_fuel`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleSteeringId_fkey` FOREIGN KEY (`vehicleSteeringId`) REFERENCES `vehicle_steering`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleMotorPowerId_fkey` FOREIGN KEY (`vehicleMotorPowerId`) REFERENCES `vehicle_motor_power`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleDoorsId_fkey` FOREIGN KEY (`vehicleDoorsId`) REFERENCES `vehicle_doors`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleColorId_fkey` FOREIGN KEY (`vehicleColorId`) REFERENCES `vehicle_color`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleCubiccmsId_fkey` FOREIGN KEY (`vehicleCubiccmsId`) REFERENCES `vehicle_cubiccms`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleMileageId_fkey` FOREIGN KEY (`vehicleMileageId`) REFERENCES `vehicle_mileage`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleFeaturesId_fkey` FOREIGN KEY (`vehicleFeaturesId`) REFERENCES `vehicle_features`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_motorCycleFeaturesId_fkey` FOREIGN KEY (`motorCycleFeaturesId`) REFERENCES `motor_cycle_features`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_vehicleFinancialId_fkey` FOREIGN KEY (`vehicleFinancialId`) REFERENCES `vehicle_financial`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicle_models` ADD CONSTRAINT `vehicle_models_brandId_fkey` FOREIGN KEY (`brandId`) REFERENCES `vehicle_brands`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicle_versions` ADD CONSTRAINT `vehicle_versions_brandId_fkey` FOREIGN KEY (`brandId`) REFERENCES `vehicle_brands`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicle_versions` ADD CONSTRAINT `vehicle_versions_modelId_fkey` FOREIGN KEY (`modelId`) REFERENCES `vehicle_models`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
