-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema BD_SIBCATIE
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema BD_SIBCATIE
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `BD_SIBCATIE` DEFAULT CHARACTER SET utf8 ;
USE `BD_SIBCATIE` ;

-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Forma`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Forma` (
  `idForma` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `caracteristicas` VARCHAR(125) NULL,
  PRIMARY KEY (`idForma`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`EstadoSalud`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`EstadoSalud` (
  `idEstadoSalud` INT NOT NULL,
  `nombre_estado` VARCHAR(45) NULL,
  PRIMARY KEY (`idEstadoSalud`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Color` (
  `idColor` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idColor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`TipoHoja`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`TipoHoja` (
  `idTipoHoja` INT NOT NULL,
  `nombre_hoja` VARCHAR(45) NULL,
  `forma` VARCHAR(45) NULL,
  PRIMARY KEY (`idTipoHoja`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Genero` (
  `idGenero` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idGenero`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Epiteto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Epiteto` (
  `idEpiteto` INT NOT NULL,
  `nombre_epiteto` VARCHAR(45) NULL,
  `referencia` VARCHAR(45) NULL,
  PRIMARY KEY (`idEpiteto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`ZonaCardinal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`ZonaCardinal` (
  `idZonaCardinal` INT NOT NULL,
  `nombre_cardinal` VARCHAR(45) NULL,
  PRIMARY KEY (`idZonaCardinal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Continente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Continente` (
  `idContinente` INT NOT NULL,
  `nombre_continente` VARCHAR(45) NULL,
  `ZonaCardinal_idZonaCardinal` INT NOT NULL,
  PRIMARY KEY (`idContinente`, `ZonaCardinal_idZonaCardinal`),
  INDEX `fk_Continente_ZonaCardinal1_idx` (`ZonaCardinal_idZonaCardinal` ASC),
  CONSTRAINT `fk_Continente_ZonaCardinal1`
    FOREIGN KEY (`ZonaCardinal_idZonaCardinal`)
    REFERENCES `BD_SIBCATIE`.`ZonaCardinal` (`idZonaCardinal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Familia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Familia` (
  `idFamilia` INT NOT NULL,
  `nombre_familia` VARCHAR(45) NULL,
  PRIMARY KEY (`idFamilia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`DeterminadaPor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`DeterminadaPor` (
  `idDeterminadaPor` INT NOT NULL,
  `nombre_determinada` VARCHAR(45) NULL,
  `fecha` DATE NULL,
  PRIMARY KEY (`idDeterminadaPor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Planta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Planta` (
  `idPlanta` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `fecha_ingreso` DATE NULL,
  `fuente_informacion` VARCHAR(45) NULL,
  `autor` VARCHAR(45) NULL,
  `altura` INT NULL,
  `reproduccion` TINYINT NULL,
  `visible` TINYINT NULL,
  `Forma_idForma` INT NOT NULL,
  `EstadoSalud_idEstadoSalud` INT NOT NULL,
  `Color_idColor` INT NOT NULL,
  `TipoHoja_idTipoHoja` INT NOT NULL,
  `Genero_idGenero` INT NOT NULL,
  `Epiteto_idEpiteto` INT NOT NULL,
  `Continente_idContinente` INT NOT NULL,
  `ZonaCardinal_idZonaCardinal` INT NOT NULL,
  `Familia_idFamilia` INT NOT NULL,
  `DeterminadaPor_idDeterminadaPor` INT NOT NULL,
  PRIMARY KEY (`idPlanta`, `Forma_idForma`, `EstadoSalud_idEstadoSalud`, `Color_idColor`, `TipoHoja_idTipoHoja`, `Genero_idGenero`, `Epiteto_idEpiteto`, `Continente_idContinente`, `ZonaCardinal_idZonaCardinal`, `Familia_idFamilia`, `DeterminadaPor_idDeterminadaPor`),
  INDEX `fk_Planta_Forma1_idx` (`Forma_idForma` ASC),
  INDEX `fk_Planta_EstadoSalud1_idx` (`EstadoSalud_idEstadoSalud` ASC),
  INDEX `fk_Planta_Color1_idx` (`Color_idColor` ASC),
  INDEX `fk_Planta_TipoHoja1_idx` (`TipoHoja_idTipoHoja` ASC),
  INDEX `fk_Planta_Genero1_idx` (`Genero_idGenero` ASC),
  INDEX `fk_Planta_Epiteto1_idx` (`Epiteto_idEpiteto` ASC),
  INDEX `fk_Planta_Continente1_idx` (`Continente_idContinente` ASC),
  INDEX `fk_Planta_ZonaCardinal1_idx` (`ZonaCardinal_idZonaCardinal` ASC),
  INDEX `fk_Planta_Familia1_idx` (`Familia_idFamilia` ASC),
  INDEX `fk_Planta_DeterminadaPor1_idx` (`DeterminadaPor_idDeterminadaPor` ASC),
  CONSTRAINT `fk_Planta_Forma1`
    FOREIGN KEY (`Forma_idForma`)
    REFERENCES `BD_SIBCATIE`.`Forma` (`idForma`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_EstadoSalud1`
    FOREIGN KEY (`EstadoSalud_idEstadoSalud`)
    REFERENCES `BD_SIBCATIE`.`EstadoSalud` (`idEstadoSalud`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_Color1`
    FOREIGN KEY (`Color_idColor`)
    REFERENCES `BD_SIBCATIE`.`Color` (`idColor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_TipoHoja1`
    FOREIGN KEY (`TipoHoja_idTipoHoja`)
    REFERENCES `BD_SIBCATIE`.`TipoHoja` (`idTipoHoja`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_Genero1`
    FOREIGN KEY (`Genero_idGenero`)
    REFERENCES `BD_SIBCATIE`.`Genero` (`idGenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_Epiteto1`
    FOREIGN KEY (`Epiteto_idEpiteto`)
    REFERENCES `BD_SIBCATIE`.`Epiteto` (`idEpiteto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_Continente1`
    FOREIGN KEY (`Continente_idContinente`)
    REFERENCES `BD_SIBCATIE`.`Continente` (`idContinente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_ZonaCardinal1`
    FOREIGN KEY (`ZonaCardinal_idZonaCardinal`)
    REFERENCES `BD_SIBCATIE`.`ZonaCardinal` (`idZonaCardinal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_Familia1`
    FOREIGN KEY (`Familia_idFamilia`)
    REFERENCES `BD_SIBCATIE`.`Familia` (`idFamilia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_DeterminadaPor1`
    FOREIGN KEY (`DeterminadaPor_idDeterminadaPor`)
    REFERENCES `BD_SIBCATIE`.`DeterminadaPor` (`idDeterminadaPor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Uso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Uso` (
  `idUso` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idUso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`NombreComun`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`NombreComun` (
  `idNombreComun` INT NOT NULL,
  `nombre_comun` VARCHAR(45) NULL,
  `lengua` VARCHAR(45) NULL,
  `Planta_idPlanta` INT NOT NULL,
  `Planta_Forma_idForma` INT NOT NULL,
  `Planta_EstadoSalud_idEstadoSalud` INT NOT NULL,
  `Planta_Color_idColor` INT NOT NULL,
  `Planta_TipoHoja_idTipoHoja` INT NOT NULL,
  `Planta_Genero_idGenero` INT NOT NULL,
  `Planta_Epiteto_idEpiteto` INT NOT NULL,
  `Planta_Continente_idContinente` INT NOT NULL,
  `Planta_ZonaCardinal_idZonaCardinal` INT NOT NULL,
  PRIMARY KEY (`idNombreComun`, `Planta_idPlanta`, `Planta_Forma_idForma`, `Planta_EstadoSalud_idEstadoSalud`, `Planta_Color_idColor`, `Planta_TipoHoja_idTipoHoja`, `Planta_Genero_idGenero`, `Planta_Epiteto_idEpiteto`, `Planta_Continente_idContinente`, `Planta_ZonaCardinal_idZonaCardinal`),
  INDEX `fk_NombreComun_Planta1_idx` (`Planta_idPlanta` ASC, `Planta_Forma_idForma` ASC, `Planta_EstadoSalud_idEstadoSalud` ASC, `Planta_Color_idColor` ASC, `Planta_TipoHoja_idTipoHoja` ASC, `Planta_Genero_idGenero` ASC, `Planta_Epiteto_idEpiteto` ASC, `Planta_Continente_idContinente` ASC, `Planta_ZonaCardinal_idZonaCardinal` ASC),
  CONSTRAINT `fk_NombreComun_Planta1`
    FOREIGN KEY (`Planta_idPlanta` , `Planta_Forma_idForma` , `Planta_EstadoSalud_idEstadoSalud` , `Planta_Color_idColor` , `Planta_TipoHoja_idTipoHoja` , `Planta_Genero_idGenero` , `Planta_Epiteto_idEpiteto` , `Planta_Continente_idContinente` , `Planta_ZonaCardinal_idZonaCardinal`)
    REFERENCES `BD_SIBCATIE`.`Planta` (`idPlanta` , `Forma_idForma` , `EstadoSalud_idEstadoSalud` , `Color_idColor` , `TipoHoja_idTipoHoja` , `Genero_idGenero` , `Epiteto_idEpiteto` , `Continente_idContinente` , `ZonaCardinal_idZonaCardinal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Foto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Foto` (
  `idFoto` INT NOT NULL,
  `fecha` DATE NULL,
  `latitud` INT NULL,
  `longitud` INT NULL,
  `Planta_idPlanta` INT NOT NULL,
  PRIMARY KEY (`idFoto`, `Planta_idPlanta`),
  INDEX `fk_Foto_Planta_idx` (`Planta_idPlanta` ASC),
  CONSTRAINT `fk_Foto_Planta`
    FOREIGN KEY (`Planta_idPlanta`)
    REFERENCES `BD_SIBCATIE`.`Planta` (`idPlanta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `BD_SIBCATIE`.`Planta_has_Uso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `BD_SIBCATIE`.`Planta_has_Uso` (
  `Planta_idPlanta` INT NOT NULL,
  `Planta_Forma_idForma` INT NOT NULL,
  `Planta_EstadoSalud_idEstadoSalud` INT NOT NULL,
  `Planta_Color_idColor` INT NOT NULL,
  `Planta_TipoHoja_idTipoHoja` INT NOT NULL,
  `Planta_Genero_idGenero` INT NOT NULL,
  `Uso_idUso` INT NOT NULL,
  PRIMARY KEY (`Planta_idPlanta`, `Planta_Forma_idForma`, `Planta_EstadoSalud_idEstadoSalud`, `Planta_Color_idColor`, `Planta_TipoHoja_idTipoHoja`, `Planta_Genero_idGenero`, `Uso_idUso`),
  INDEX `fk_Planta_has_Uso_Uso1_idx` (`Uso_idUso` ASC),
  INDEX `fk_Planta_has_Uso_Planta1_idx` (`Planta_idPlanta` ASC, `Planta_Forma_idForma` ASC, `Planta_EstadoSalud_idEstadoSalud` ASC, `Planta_Color_idColor` ASC, `Planta_TipoHoja_idTipoHoja` ASC, `Planta_Genero_idGenero` ASC),
  CONSTRAINT `fk_Planta_has_Uso_Planta1`
    FOREIGN KEY (`Planta_idPlanta` , `Planta_Forma_idForma` , `Planta_EstadoSalud_idEstadoSalud` , `Planta_Color_idColor` , `Planta_TipoHoja_idTipoHoja` , `Planta_Genero_idGenero`)
    REFERENCES `BD_SIBCATIE`.`Planta` (`idPlanta` , `Forma_idForma` , `EstadoSalud_idEstadoSalud` , `Color_idColor` , `TipoHoja_idTipoHoja` , `Genero_idGenero`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Planta_has_Uso_Uso1`
    FOREIGN KEY (`Uso_idUso`)
    REFERENCES `BD_SIBCATIE`.`Uso` (`idUso`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
