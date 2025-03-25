-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `User_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE `tecnologies` (
   `id` INTEGER NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(191) NOT NULL,
   `description` VARCHAR(191) NOT NULL,
   `image` VARCHAR(191) NOT NULL,
   `emphasis` BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT `tecnologies_pkey` PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


CREATE TABLE `projects` (
   `id` INTEGER NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(191) NOT NULL,
   `description` VARCHAR(191) NOT NULL,
   `image` VARCHAR(191) NOT NULL,
   `level` INTEGER NOT NULL,
   `type` VARCHAR(191) NOT NULL,
   `emphasis` BOOLEAN NOT NULL DEFAULT false,
   `repository` VARCHAR(191) NOT NULL,

    CONSTRAINT `projetos_pkey` PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;