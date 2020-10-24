-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema persondb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `persondb` ;

-- -----------------------------------------------------
-- Schema persondb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `persondb` DEFAULT CHARACTER SET utf8 ;
USE `persondb` ;

-- -----------------------------------------------------
-- Table `person`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `person` ;

CREATE TABLE IF NOT EXISTS `person` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NULL,
  `torso_thickness` DOUBLE NOT NULL DEFAULT 2.5,
  `leg_thickness` DOUBLE NOT NULL DEFAULT 2.5,
  `arm_thickness` DOUBLE NOT NULL DEFAULT 2.5,
  `eye_color` VARCHAR(45) NOT NULL DEFAULT 'black',
  `eye_size` VARCHAR(45) NOT NULL DEFAULT '10',
  `expression` VARCHAR(45) NOT NULL DEFAULT 'neutral',
  `skin_color` VARCHAR(45) NOT NULL DEFAULT 'green',
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS personuser;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'personuser' IDENTIFIED BY 'personuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'personuser';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `person`
-- -----------------------------------------------------
START TRANSACTION;
USE `persondb`;
INSERT INTO `person` (`id`, `first_name`, `last_name`, `torso_thickness`, `leg_thickness`, `arm_thickness`, `eye_color`, `eye_size`, `expression`, `skin_color`) VALUES (1, 'George', 'Jenkins', 5.5, 2, 2, 'green', '10', 'smile', 'Orange');
INSERT INTO `person` (`id`, `first_name`, `last_name`, `torso_thickness`, `leg_thickness`, `arm_thickness`, `eye_color`, `eye_size`, `expression`, `skin_color`) VALUES (2, 'Marty', 'McMuffin', 3, 1, 6, 'blue', '15', 'neutral', 'Wheat');

COMMIT;

