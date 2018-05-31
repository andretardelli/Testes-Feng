-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema TabelaDesenvolvimento
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema TabelaDesenvolvimento
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `TabelaDesenvolvimento` DEFAULT CHARACTER SET utf8 ;
USE `TabelaDesenvolvimento` ;

-- -----------------------------------------------------
-- Table `TabelaDesenvolvimento`.`Desenv`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TabelaDesenvolvimento`.`Desenv` (
  `idDesenv` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `descrtiption` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  `basePoints` INT NULL,
  `startDate` DATE NULL,
  `endDate` DATE NULL,
  `isActive` TINYINT NULL,
  `alreadyAnswered` TINYINT NULL,
  PRIMARY KEY (`idDesenv`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TabelaDesenvolvimento`.`Perguntas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TabelaDesenvolvimento`.`Perguntas` (
  `idPerguntas` INT NOT NULL,
  `text` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`idPerguntas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TabelaDesenvolvimento`.`Respostas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TabelaDesenvolvimento`.`Respostas` (
  `idRespostas` INT NOT NULL,
  `text` VARCHAR(45) NULL,
  `value` VARCHAR(45) NULL,
  PRIMARY KEY (`idRespostas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `TabelaDesenvolvimento`.`Todos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `TabelaDesenvolvimento`.`Todos` (
  `Desenv_idDesenv` INT NOT NULL,
  `Perguntas_idPerguntas` INT NOT NULL,
  `Respostas_idRespostas` INT NOT NULL,
  INDEX `fk_Todos_Desenv1_idx` (`Desenv_idDesenv` ASC),
  INDEX `fk_Todos_Perguntas1_idx` (`Perguntas_idPerguntas` ASC),
  PRIMARY KEY (`Respostas_idRespostas`, `Desenv_idDesenv`, `Perguntas_idPerguntas`),
  CONSTRAINT `fk_Todos_Desenv1`
    FOREIGN KEY (`Desenv_idDesenv`)
    REFERENCES `TabelaDesenvolvimento`.`Desenv` (`idDesenv`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Todos_Perguntas1`
    FOREIGN KEY (`Perguntas_idPerguntas`)
    REFERENCES `TabelaDesenvolvimento`.`Perguntas` (`idPerguntas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Todos_Respostas1`
    FOREIGN KEY (`Respostas_idRespostas`)
    REFERENCES `TabelaDesenvolvimento`.`Respostas` (`idRespostas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
