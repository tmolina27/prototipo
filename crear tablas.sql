-- MySQL Script generated by MySQL Workbench
-- Fri Jul 21 22:05:08 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Carros`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Carros` (
  `id_carro` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`id_carro`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Actos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Actos` (
  `id_acto` INT NOT NULL,
  `clave` VARCHAR(45) NULL,
  `descripccion` VARCHAR(45) NULL,
  PRIMARY KEY (`id_acto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salida`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salida` (
  `id_salida` INT NOT NULL,
  `id_acto` VARCHAR(45) NULL,
  `id_carro` VARCHAR(45) NULL,
  `hora_salida` VARCHAR(45) NULL,
  `hora_llegada` VARCHAR(45) NULL,
  `km_salida` VARCHAR(45) NULL,
  `km_llegada` VARCHAR(45) NULL,
  `dir` VARCHAR(45) NULL,
  `Comuna` VARCHAR(45) NULL,
  `Conductor` VARCHAR(45) NULL,
  `obac` VARCHAR(45) NULL,
  PRIMARY KEY (`id_salida`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`bomberos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`bomberos` (
  `id_bomberos` INT NOT NULL,
  `Nombre` VARCHAR(45) NULL,
  `cargo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_bomberos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`combustible`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`combustible` (
  `id_combustible` INT NOT NULL,
  `id_carro` VARCHAR(45) NULL,
  `nro_boleta` VARCHAR(45) NULL,
  `litros` VARCHAR(45) NULL,
  `valor` VARCHAR(45) NULL,
  `combustible` VARCHAR(45) NULL,
  `obs` VARCHAR(45) NULL,
  PRIMARY KEY (`id_combustible`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`inventario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`inventario` (
  `id_inventario` INT NOT NULL,
  `id_carro` VARCHAR(45) NULL,
  `nombre` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  `valor` VARCHAR(45) NULL,
  `ubicacion` VARCHAR(45) NULL,
  `cantidad` VARCHAR(45) NULL,
  PRIMARY KEY (`id_inventario`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;