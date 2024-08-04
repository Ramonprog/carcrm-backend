/*
  Warnings:

  - You are about to drop the column `billingInformation` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `deletedAt` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `disabledAccount` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `facebookPageId` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `facebookPixel` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `googleAnalytics` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `isActive` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `logoUrl` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `nextExpirationDate` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `primaryColor` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `secondaryColor` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `siteDescription` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `siteKeyWord` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `socialMedia` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `subscriptionPlanId` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `whatsappNumber` on the `tenants` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `tenantId` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `users` table. All the data in the column will be lost.
  - You are about to drop the column `brandId` on the `vehicle_models` table. All the data in the column will be lost.
  - You are about to drop the column `brandId` on the `vehicle_versions` table. All the data in the column will be lost.
  - You are about to drop the column `modelId` on the `vehicle_versions` table. All the data in the column will be lost.
  - You are about to drop the column `cityUrl` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `countryUrl` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `motorCycleFeaturesId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `tagId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `tenantId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleBrandId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleColorId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleCubiccmsId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleDoorsId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleFeaturesId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleFinancialId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleFuelId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleGearBoxId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleMileageId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleModelId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleMotorPowerId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleOwner` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehiclePrice` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleRegistration` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleSteeringId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleTitle` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleTypeId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `vehicleVersionId` on the `vehicles` table. All the data in the column will be lost.
  - You are about to drop the column `zipCode` on the `vehicles` table. All the data in the column will be lost.
  - Added the required column `updated_at` to the `tenants` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tenant_id` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `updated_at` to the `users` table without a default value. This is not possible if the table is not empty.
  - Added the required column `tenant_id` to the `vehicles` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX `tenants_subscriptionPlanId_fkey` ON `tenants`;

-- DropIndex
DROP INDEX `users_tenantId_fkey` ON `users`;

-- DropIndex
DROP INDEX `vehicle_models_brandId_fkey` ON `vehicle_models`;

-- DropIndex
DROP INDEX `vehicle_versions_brandId_fkey` ON `vehicle_versions`;

-- DropIndex
DROP INDEX `vehicle_versions_modelId_fkey` ON `vehicle_versions`;

-- DropIndex
DROP INDEX `vehicles_motorCycleFeaturesId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_tenantId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleBrandId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleColorId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleCubiccmsId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleDoorsId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleFeaturesId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleFinancialId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleFuelId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleGearBoxId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleMileageId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleModelId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleMotorPowerId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleSteeringId_fkey` ON `vehicles`;

-- DropIndex
DROP INDEX `vehicles_vehicleVersionId_fkey` ON `vehicles`;

-- AlterTable
ALTER TABLE `tenants` DROP COLUMN `billingInformation`,
    DROP COLUMN `createdAt`,
    DROP COLUMN `deletedAt`,
    DROP COLUMN `disabledAccount`,
    DROP COLUMN `facebookPageId`,
    DROP COLUMN `facebookPixel`,
    DROP COLUMN `googleAnalytics`,
    DROP COLUMN `isActive`,
    DROP COLUMN `logoUrl`,
    DROP COLUMN `nextExpirationDate`,
    DROP COLUMN `primaryColor`,
    DROP COLUMN `secondaryColor`,
    DROP COLUMN `siteDescription`,
    DROP COLUMN `siteKeyWord`,
    DROP COLUMN `socialMedia`,
    DROP COLUMN `subscriptionPlanId`,
    DROP COLUMN `updatedAt`,
    DROP COLUMN `whatsappNumber`,
    ADD COLUMN `billing_information` JSON NULL,
    ADD COLUMN `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `deleted_at` DATETIME(3) NULL,
    ADD COLUMN `disabled_account` DATETIME(3) NULL,
    ADD COLUMN `facebook_page_id` VARCHAR(191) NULL,
    ADD COLUMN `facebook_pixel` VARCHAR(191) NULL,
    ADD COLUMN `google_analytics` VARCHAR(191) NULL,
    ADD COLUMN `is_active` BOOLEAN NOT NULL DEFAULT true,
    ADD COLUMN `logo_url` VARCHAR(191) NULL,
    ADD COLUMN `next_expiration_date` DATETIME(3) NULL,
    ADD COLUMN `primary_color` VARCHAR(191) NULL,
    ADD COLUMN `secondary_color` VARCHAR(191) NULL,
    ADD COLUMN `site_description` VARCHAR(191) NULL,
    ADD COLUMN `site_key_word` VARCHAR(191) NULL,
    ADD COLUMN `social_media` JSON NULL,
    ADD COLUMN `subscription_plan_id` INTEGER NULL,
    ADD COLUMN `updated_at` DATETIME(3) NOT NULL,
    ADD COLUMN `whatsapp_number` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `users` DROP COLUMN `createdAt`,
    DROP COLUMN `tenantId`,
    DROP COLUMN `updatedAt`,
    ADD COLUMN `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    ADD COLUMN `tenant_id` INTEGER NOT NULL,
    ADD COLUMN `updated_at` DATETIME(3) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_models` DROP COLUMN `brandId`,
    ADD COLUMN `brand_id` INTEGER NULL;

-- AlterTable
ALTER TABLE `vehicle_versions` DROP COLUMN `brandId`,
    DROP COLUMN `modelId`,
    ADD COLUMN `brand_id` INTEGER NULL,
    ADD COLUMN `model_id` INTEGER NULL;

-- AlterTable
ALTER TABLE `vehicles` DROP COLUMN `cityUrl`,
    DROP COLUMN `countryUrl`,
    DROP COLUMN `motorCycleFeaturesId`,
    DROP COLUMN `tagId`,
    DROP COLUMN `tenantId`,
    DROP COLUMN `vehicleBrandId`,
    DROP COLUMN `vehicleColorId`,
    DROP COLUMN `vehicleCubiccmsId`,
    DROP COLUMN `vehicleDoorsId`,
    DROP COLUMN `vehicleFeaturesId`,
    DROP COLUMN `vehicleFinancialId`,
    DROP COLUMN `vehicleFuelId`,
    DROP COLUMN `vehicleGearBoxId`,
    DROP COLUMN `vehicleMileageId`,
    DROP COLUMN `vehicleModelId`,
    DROP COLUMN `vehicleMotorPowerId`,
    DROP COLUMN `vehicleOwner`,
    DROP COLUMN `vehiclePrice`,
    DROP COLUMN `vehicleRegistration`,
    DROP COLUMN `vehicleSteeringId`,
    DROP COLUMN `vehicleTitle`,
    DROP COLUMN `vehicleTypeId`,
    DROP COLUMN `vehicleVersionId`,
    DROP COLUMN `zipCode`,
    ADD COLUMN `city_url` VARCHAR(191) NULL,
    ADD COLUMN `country_url` VARCHAR(191) NULL,
    ADD COLUMN `motor_cycle_features_id` INTEGER NULL,
    ADD COLUMN `tag_id` INTEGER NULL,
    ADD COLUMN `tenant_id` INTEGER NOT NULL,
    ADD COLUMN `vehicle_brand_id` INTEGER NULL,
    ADD COLUMN `vehicle_color_id` INTEGER NULL,
    ADD COLUMN `vehicle_cubiccms_id` INTEGER NULL,
    ADD COLUMN `vehicle_doors_id` INTEGER NULL,
    ADD COLUMN `vehicle_features_id` INTEGER NULL,
    ADD COLUMN `vehicle_financial_id` INTEGER NULL,
    ADD COLUMN `vehicle_fuel_id` INTEGER NULL,
    ADD COLUMN `vehicle_gear_box_id` INTEGER NULL,
    ADD COLUMN `vehicle_mileage_id` INTEGER NULL,
    ADD COLUMN `vehicle_model_id` INTEGER NULL,
    ADD COLUMN `vehicle_motor_power_id` INTEGER NULL,
    ADD COLUMN `vehicle_owner` VARCHAR(191) NULL,
    ADD COLUMN `vehicle_price` INTEGER NULL,
    ADD COLUMN `vehicle_registration_date` DATETIME(3) NULL,
    ADD COLUMN `vehicle_steering_id` INTEGER NULL,
    ADD COLUMN `vehicle_title` VARCHAR(191) NULL,
    ADD COLUMN `vehicle_type_id` INTEGER NULL,
    ADD COLUMN `vehicle_version_id` INTEGER NULL,
    ADD COLUMN `zip_code` VARCHAR(191) NULL;

-- CreateIndex
CREATE INDEX `tenants_subscription_plan_id_fkey` ON `tenants`(`subscription_plan_id`);

-- CreateIndex
CREATE INDEX `users_tenant_id_fkey` ON `users`(`tenant_id`);

-- CreateIndex
CREATE INDEX `vehicle_models_brand_id_fkey` ON `vehicle_models`(`brand_id`);

-- CreateIndex
CREATE INDEX `vehicle_versions_brand_id_fkey` ON `vehicle_versions`(`brand_id`);

-- CreateIndex
CREATE INDEX `vehicle_versions_model_id_fkey` ON `vehicle_versions`(`model_id`);

-- CreateIndex
CREATE INDEX `vehicles_motor_cycle_features_id_fkey` ON `vehicles`(`motor_cycle_features_id`);

-- CreateIndex
CREATE INDEX `vehicles_tenant_id_fkey` ON `vehicles`(`tenant_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_brand_id_fkey` ON `vehicles`(`vehicle_brand_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_color_id_fkey` ON `vehicles`(`vehicle_color_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_cubiccms_id_fkey` ON `vehicles`(`vehicle_cubiccms_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_doors_id_fkey` ON `vehicles`(`vehicle_doors_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_features_id_fkey` ON `vehicles`(`vehicle_features_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_financial_id_fkey` ON `vehicles`(`vehicle_financial_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_fuel_id_fkey` ON `vehicles`(`vehicle_fuel_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_gear_box_id_fkey` ON `vehicles`(`vehicle_gear_box_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_mileage_id_fkey` ON `vehicles`(`vehicle_mileage_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_model_id_fkey` ON `vehicles`(`vehicle_model_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_motor_power_id_fkey` ON `vehicles`(`vehicle_motor_power_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_steering_id_fkey` ON `vehicles`(`vehicle_steering_id`);

-- CreateIndex
CREATE INDEX `vehicles_vehicle_version_id_fkey` ON `vehicles`(`vehicle_version_id`);
