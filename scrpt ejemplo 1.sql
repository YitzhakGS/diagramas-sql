-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema empleado-vehiculo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema empleado-vehiculo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `empleado-vehiculo` DEFAULT CHARACTER SET utf8 ;
USE `empleado-vehiculo` ;

-- -----------------------------------------------------
-- Table `empleado-vehiculo`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado-vehiculo`.`EMPLEADO` (
  `codemp` VARCHAR(15) NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `empleado-vehiculo`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `empleado-vehiculo`.`VEHICULO` (
  `matricula` VARCHAR(10) NOT NULL,
  `modelo` VARCHAR(10) NOT NULL,
  `fecha_inicio` VARCHAR(45) NULL,
  `EMPLEADO_codemp` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`matricula`, `EMPLEADO_codemp`),
  INDEX `fk_VEHICULO_EMPLEADO_idx` (`EMPLEADO_codemp` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
