-- DropIndex
DROP INDEX `tenants_subscriptionPlanId_fkey` ON `tenants`;

-- DropIndex
DROP INDEX `users_tenantId_fkey` ON `users`;

-- AddForeignKey
ALTER TABLE `tenants` ADD CONSTRAINT `tenants_subscriptionPlanId_fkey` FOREIGN KEY (`subscriptionPlanId`) REFERENCES `subscription_plans`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `users` ADD CONSTRAINT `users_tenantId_fkey` FOREIGN KEY (`tenantId`) REFERENCES `tenants`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
