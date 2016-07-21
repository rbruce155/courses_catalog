-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema coursespylot
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema coursespylot
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coursespylot` DEFAULT CHARACTER SET utf8 ;
USE `coursespylot` ;

-- -----------------------------------------------------
-- Table `coursespylot`.`courses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coursespylot`.`courses` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `course_name` VARCHAR(255) NULL DEFAULT NULL,
  `course_description` TEXT NULL DEFAULT NULL,
  `date_added` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
