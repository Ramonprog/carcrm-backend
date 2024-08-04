/*
  Warnings:

  - You are about to drop the column `name` on the `motor_cycle_features` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_brands` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_color` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_cubiccms` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_doors` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_exchange` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_features` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_financial` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_fuel` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_gear_box` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_mileage` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_motor_power` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_photos` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_registration_date` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_steering` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_type` table. All the data in the column will be lost.
  - Added the required column `label` to the `motor_cycle_features` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_brands` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_color` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_cubiccms` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_doors` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_exchange` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_features` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_financial` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_fuel` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_gear_box` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_mileage` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_motor_power` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_photos` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_registration_date` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_steering` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_type` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `motor_cycle_features` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_brands` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_color` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_cubiccms` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_doors` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_exchange` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_features` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_financial` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_fuel` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_gear_box` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_mileage` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_motor_power` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_photos` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_registration_date` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_steering` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_type` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;
