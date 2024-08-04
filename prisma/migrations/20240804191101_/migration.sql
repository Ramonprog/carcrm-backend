/*
  Warnings:

  - You are about to drop the column `name` on the `vehicle_models` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `vehicle_versions` table. All the data in the column will be lost.
  - Added the required column `label` to the `vehicle_models` table without a default value. This is not possible if the table is not empty.
  - Added the required column `label` to the `vehicle_versions` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `vehicle_models` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `vehicle_versions` DROP COLUMN `name`,
    ADD COLUMN `label` VARCHAR(191) NOT NULL;
