-- MySQL Script generated by MySQL Workbench
-- Mon May 13 14:10:30 2019
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema baza
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `baza` ;

-- -----------------------------------------------------
-- Schema baza
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `baza` DEFAULT CHARACTER SET utf8 ;
USE `baza` ;

-- -----------------------------------------------------
-- Table `baza`.`Seznam`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Seznam` ;

CREATE TABLE IF NOT EXISTS `baza`.`Seznam` (
  `idSeznam` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idSeznam`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baza`.`Kosarica`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Kosarica` ;

CREATE TABLE IF NOT EXISTS `baza`.`Kosarica` (
  `idKosarica` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idKosarica`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baza`.`Uporabnik`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Uporabnik` ;

CREATE TABLE IF NOT EXISTS `baza`.`Uporabnik` (
  `idUporabnik` INT NOT NULL AUTO_INCREMENT,
  `ime` VARCHAR(100) NOT NULL,
  `priimek` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `geslo` VARCHAR(100) NOT NULL,
  `datum_rojstva` DATE NOT NULL,
  `spol` VARCHAR(1) NOT NULL,
  `tip_uporabnika` VARCHAR(45) NOT NULL,
  `profilna_slika` VARCHAR(45) NULL,
  `Seznam_idSeznam` INT NOT NULL,
  `Kosarica_idKosarica` INT NOT NULL,
  PRIMARY KEY (`idUporabnik`),
  INDEX `fk_Uporabnik_Seznam1_idx` (`Seznam_idSeznam` ASC) VISIBLE,
  INDEX `fk_Uporabnik_Kosarica1_idx` (`Kosarica_idKosarica` ASC) VISIBLE,
  CONSTRAINT `fk_Uporabnik_Seznam1`
    FOREIGN KEY (`Seznam_idSeznam`)
    REFERENCES `baza`.`Seznam` (`idSeznam`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Uporabnik_Kosarica1`
    FOREIGN KEY (`Kosarica_idKosarica`)
    REFERENCES `baza`.`Kosarica` (`idKosarica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baza`.`Meritve`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Meritve` ;

CREATE TABLE IF NOT EXISTS `baza`.`Meritve` (
  `idMeritve` INT NOT NULL AUTO_INCREMENT,
  `teza` DOUBLE NOT NULL,
  `visina` DOUBLE NOT NULL,
  `datumVnos` DATE NOT NULL,
  `Uporabnik_idUporabnik` INT NOT NULL,
  PRIMARY KEY (`idMeritve`),
  INDEX `fk_Meritve_Uporabnik_idx` (`Uporabnik_idUporabnik` ASC) VISIBLE,
  CONSTRAINT `fk_Meritve_Uporabnik`
    FOREIGN KEY (`Uporabnik_idUporabnik`)
    REFERENCES `baza`.`Uporabnik` (`idUporabnik`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baza`.`Kategorija`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Kategorija` ;

CREATE TABLE IF NOT EXISTS `baza`.`Kategorija` (
  `idKategorija` INT NOT NULL AUTO_INCREMENT,
  `naziv_kategorije` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idKategorija`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baza`.`Objava`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Objava` ;

CREATE TABLE IF NOT EXISTS `baza`.`Objava` (
  `idObjava` INT NOT NULL AUTO_INCREMENT,
  `datumVnosa` DATE NOT NULL,
  `naziv` VARCHAR(45) NOT NULL,
  `vsebina` LONGTEXT NOT NULL,
  `Uporabnik_idUporabnik` INT NOT NULL,
  `Kategorija_idKategorija` INT NOT NULL,
  `Seznam_idSeznam` INT NULL,
  PRIMARY KEY (`idObjava`),
  INDEX `fk_Objava_Uporabnik1_idx` (`Uporabnik_idUporabnik` ASC) VISIBLE,
  INDEX `fk_Objava_Kategorija1_idx` (`Kategorija_idKategorija` ASC) VISIBLE,
  INDEX `fk_Objava_Seznam1_idx` (`Seznam_idSeznam` ASC) VISIBLE,
  CONSTRAINT `fk_Objava_Uporabnik1`
    FOREIGN KEY (`Uporabnik_idUporabnik`)
    REFERENCES `baza`.`Uporabnik` (`idUporabnik`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Objava_Kategorija1`
    FOREIGN KEY (`Kategorija_idKategorija`)
    REFERENCES `baza`.`Kategorija` (`idKategorija`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Objava_Seznam1`
    FOREIGN KEY (`Seznam_idSeznam`)
    REFERENCES `baza`.`Seznam` (`idSeznam`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baza`.`Komentar`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Komentar` ;

CREATE TABLE IF NOT EXISTS `baza`.`Komentar` (
  `idKomentar` INT NOT NULL AUTO_INCREMENT,
  `vsebina` VARCHAR(45) NOT NULL,
  `datum` VARCHAR(45) NOT NULL,
  `Objava_idObjava` INT NOT NULL,
  `Uporabnik_idUporabnik` INT NOT NULL,
  PRIMARY KEY (`idKomentar`),
  INDEX `fk_Komentar_Objava1_idx` (`Objava_idObjava` ASC) VISIBLE,
  INDEX `fk_Komentar_Uporabnik1_idx` (`Uporabnik_idUporabnik` ASC) VISIBLE,
  CONSTRAINT `fk_Komentar_Objava1`
    FOREIGN KEY (`Objava_idObjava`)
    REFERENCES `baza`.`Objava` (`idObjava`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Komentar_Uporabnik1`
    FOREIGN KEY (`Uporabnik_idUporabnik`)
    REFERENCES `baza`.`Uporabnik` (`idUporabnik`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baza`.`Tip_Artikla`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Tip_Artikla` ;

CREATE TABLE IF NOT EXISTS `baza`.`Tip_Artikla` (
  `idTip_Artikla` INT NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(45) NULL,
  PRIMARY KEY (`idTip_Artikla`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baza`.`Artikel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Artikel` ;

CREATE TABLE IF NOT EXISTS `baza`.`Artikel` (
  `idArtikel` INT NOT NULL AUTO_INCREMENT,
  `naziv` VARCHAR(45) NOT NULL,
  `opis` LONGTEXT NOT NULL,
  `Cena` DOUBLE NOT NULL,
  `Kosarica_idKosarica` INT NOT NULL,
  `Tip_Artikla_idTip_Artikla` INT NOT NULL,
  PRIMARY KEY (`idArtikel`),
  INDEX `fk_Artikel_Kosarica1_idx` (`Kosarica_idKosarica` ASC) VISIBLE,
  INDEX `fk_Artikel_Tip_Artikla1_idx` (`Tip_Artikla_idTip_Artikla` ASC) VISIBLE,
  CONSTRAINT `fk_Artikel_Kosarica1`
    FOREIGN KEY (`Kosarica_idKosarica`)
    REFERENCES `baza`.`Kosarica` (`idKosarica`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Artikel_Tip_Artikla1`
    FOREIGN KEY (`Tip_Artikla_idTip_Artikla`)
    REFERENCES `baza`.`Tip_Artikla` (`idTip_Artikla`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `baza`.`Slika`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `baza`.`Slika` ;

CREATE TABLE IF NOT EXISTS `baza`.`Slika` (
  `idSlika` INT NOT NULL,
  `imeSlike` VARCHAR(500) NOT NULL,
  `Objava_idObjava` INT NULL,
  `Artikel_idArtikel` INT NOT NULL,
  PRIMARY KEY (`idSlika`),
  INDEX `fk_Slika_Objava1_idx` (`Objava_idObjava` ASC) VISIBLE,
  INDEX `fk_Slika_Artikel1_idx` (`Artikel_idArtikel` ASC) VISIBLE,
  CONSTRAINT `fk_Slika_Objava1`
    FOREIGN KEY (`Objava_idObjava`)
    REFERENCES `baza`.`Objava` (`idObjava`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Slika_Artikel1`
    FOREIGN KEY (`Artikel_idArtikel`)
    REFERENCES `baza`.`Artikel` (`idArtikel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
