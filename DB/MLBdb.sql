-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema MLBdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `MLBdb` ;

-- -----------------------------------------------------
-- Schema MLBdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `MLBdb` DEFAULT CHARACTER SET utf8 ;
USE `MLBdb` ;

-- -----------------------------------------------------
-- Table `players`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `players` ;

CREATE TABLE IF NOT EXISTS `players` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `home_runs` INT NULL,
  `rbi` INT NULL,
  `batting_avg` DOUBLE NULL,
  `position` VARCHAR(45) NULL,
  `team` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS kvothik@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'kvothik'@'localhost' IDENTIFIED BY 'kvothik';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'kvothik'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `players`
-- -----------------------------------------------------
START TRANSACTION;
USE `MLBdb`;
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`) VALUES (1, 'Jose', 'Altuve', NULL, NULL, NULL, NULL, NULL);

COMMIT;

