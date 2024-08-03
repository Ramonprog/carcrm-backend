-- DropIndex
DROP INDEX `tenants_subscriptionPlanId_fkey` ON `tenants`;

-- DropIndex
DROP INDEX `users_tenantId_fkey` ON `users`;

-- CreateTable
CREATE TABLE `vehicles` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `vehicleType` VARCHAR(191) NULL,
    `vehicleBrand` VARCHAR(191) NULL,
    `vehicleModel` VARCHAR(191) NULL,
    `vehicleVersion` VARCHAR(191) NULL,
    `vehicleRegistration` DATETIME(3) NULL,
    `vehicleGearBox` VARCHAR(191) NULL,
    `vehicleFuel` VARCHAR(191) NULL,
    `vehicleSteering` VARCHAR(191) NULL,
    `vehicleMotorPower` VARCHAR(191) NULL,
    `vehicleDoors` VARCHAR(191) NULL,
    `veicleColor` VARCHAR(191) NULL,
    `vehicleCubiccms` VARCHAR(191) NULL,
    `vehicleMileage` VARCHAR(191) NULL,
    `vehicleOwner` VARCHAR(191) NULL,
    `vehicleFeatures` JSON NULL,
    `motorCycleFeatures` JSON NULL,
    `vehicleFinancial` JSON NULL,
    `vehiclePrice` INTEGER NULL,
    `vehicleTitle` VARCHAR(191) NULL,
    `title` VARCHAR(191) NULL,
    `description` VARCHAR(191) NULL,
    `status` VARCHAR(191) NULL,
    `tagId` INTEGER NULL,
    `zipCode` VARCHAR(191) NULL,
    `city` VARCHAR(191) NULL,
    `cityUrl` VARCHAR(191) NULL,
    `country` VARCHAR(191) NULL,
    `countryUrl` VARCHAR(191) NULL,
    `tenantId` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `tenants` ADD CONSTRAINT `tenants_subscriptionPlanId_fkey` FOREIGN KEY (`subscriptionPlanId`) REFERENCES `subscription_plans`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_tenantId_fkey` FOREIGN KEY (`tenantId`) REFERENCES `tenants`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `vehicles` ADD CONSTRAINT `vehicles_tenantId_fkey` FOREIGN KEY (`tenantId`) REFERENCES `tenants`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
