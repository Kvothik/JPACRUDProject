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
  `age` INT NULL,
  `uniform_number` INT NULL,
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
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (1, 'Carlos', 'Correa', 21, 59, .279, 'short stop', 'Astros', 25, 1);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (2, 'George', 'Springer', 39, 96, .292, 'right field', 'Astros', 30, 4);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (3, 'Yordan', 'Alvarez', 27, 78, .313, 'left field', 'Astros', 22, 44);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (4, 'Jake', 'Marisnick', 10, 34, .233, 'center field', 'Astros', 28, 6);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (5, 'Yuli', 'Gurriel', 31, 104, .298, 'third base', 'Astros', 35, 10);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (6, 'Michael', 'Brantley', 22, 90, .311, 'outfield', 'Astros', 32, 23);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (7, 'Aledmys', 'Diaz', 9, 40, .271, 'short stop', 'Astros', 29, 16);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (8, 'Josh', 'Reddick', 14, 56, .275, 'right field', 'Astros', 32, 22);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (9, 'Kyle', 'Tucker', 4, 11, .269, 'first base', 'Astros', 22, 3);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (10, 'Jose', 'Altuve', 31, 74, .298, 'second base', 'Astros', 29, 27);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (11, 'Alex', 'Bregman', 41, 112, .296, 'third base', 'Astros', 25, 2);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (12, 'Kurt', 'Suzuki', 17, 63, .264, 'catcher', 'Nationals', 36, 28);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (13, 'Trea', 'Turner', 19, 57, .298, 'outfield', 'Nationals', 26, 7);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (14, 'Aaron', 'Judge', 27, 55, .272, 'right field', 'Yankees', 27, 99);
INSERT INTO `players` (`id`, `first_name`, `last_name`, `home_runs`, `rbi`, `batting_avg`, `position`, `team`, `age`, `uniform_number`) VALUES (15, 'Mike', 'Trout', 45, 104, 0.291, 'Center Field', 'Angels', 27, 27);

COMMIT;

