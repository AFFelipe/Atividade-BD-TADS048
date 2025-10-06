-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Escola_de_musica
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Escola_de_musica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS Escola_de_musica DEFAULT CHARACTER SET utf8 ;
USE Escola_de_musica ;

-- -----------------------------------------------------
-- Table Escola_de_musica.Orquestras
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Escola_de_musica.Orquestras (
  id_Orquestras INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  dataDeCriacao DATE NOT NULL,
  PRIMARY KEY (id_Orquestras))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Escola_de_musica.Telefone
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Escola_de_musica.Telefone (
  idTelefone INT NOT NULL,
  numero VARCHAR(15) NOT NULL,
  Orquestras_id_Orquestras INT NOT NULL,
  PRIMARY KEY (idTelefone),
  INDEX fk_Telefone_Orquestras_idx (Orquestras_id_Orquestras ASC) VISIBLE,
  CONSTRAINT fk_Telefone_Orquestras
    FOREIGN KEY (Orquestras_id_Orquestras)
    REFERENCES Escola_de_musica.Orquestras (id_Orquestras)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Escola_de_musica.Endereco
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Escola_de_musica.Endereco (
  Orquestras_id_Orquestras INT NOT NULL,
  UF CHAR(2) NOT NULL,
  cidade VARCHAR(45) NOT NULL,
  bairro VARCHAR(45) NOT NULL,
  rua VARCHAR(45) NOT NULL,
  cep VARCHAR(9) NOT NULL,
  numero INT NOT NULL,
  PRIMARY KEY (Orquestras_id_Orquestras),
  CONSTRAINT fk_Endereco_Orquestras1
    FOREIGN KEY (Orquestras_id_Orquestras)
    REFERENCES Escola_de_musica.Orquestras (id_Orquestras)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Escola_de_musica.Musicos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Escola_de_musica.Musicos (
  CPF VARCHAR(14) NOT NULL,
  nome VARCHAR(60) NOT NULL,
  nacionalidade VARCHAR(25) NOT NULL,
  NomeSocial INT NULL,
  dataNasc DATE NOT NULL,
  Orquestras_id_Orquestras INT NOT NULL,
  PRIMARY KEY (CPF),
  INDEX fk_Musicos_Orquestras1_idx (Orquestras_id_Orquestras ASC) VISIBLE,
  CONSTRAINT fk_Musicos_Orquestras1
    FOREIGN KEY (Orquestras_id_Orquestras)
    REFERENCES Escola_de_musica.Orquestras (id_Orquestras)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Escola_de_musica.Instrumentos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Escola_de_musica.Instrumentos (
  idInstrumentos INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  tipo VARCHAR(45) NOT NULL,
  PRIMARY KEY (idInstrumentos))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Escola_de_musica.Apto_a_Tocar
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Escola_de_musica.Apto_a_Tocar (
  Musicos_CPF VARCHAR(14) NOT NULL,
  Instrumentos_idInstrumentos INT NOT NULL,
  PRIMARY KEY (Musicos_CPF, Instrumentos_idInstrumentos),
  INDEX fk_Musicos_has_Instrumentos_Instrumentos1_idx (Instrumentos_idInstrumentos ASC) VISIBLE,
  INDEX fk_Musicos_has_Instrumentos_Musicos1_idx (Musicos_CPF ASC) VISIBLE,
  CONSTRAINT fk_Musicos_has_Instrumentos_Musicos1
    FOREIGN KEY (Musicos_CPF)
    REFERENCES Escola_de_musica.Musicos (CPF)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Musicos_has_Instrumentos_Instrumentos1
    FOREIGN KEY (Instrumentos_idInstrumentos)
    REFERENCES Escola_de_musica.Instrumentos (idInstrumentos)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Escola_de_musica.Sinfonia
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Escola_de_musica.Sinfonia (
  idSinfonia INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  compositor VARCHAR(45) NOT NULL,
  dataDeCriacao DATE NOT NULL,
  Orquestras_id_Orquestras INT NOT NULL,
  PRIMARY KEY (idSinfonia),
  INDEX fk_Sinfonia_Orquestras1_idx (Orquestras_id_Orquestras ASC) VISIBLE,
  CONSTRAINT fk_Sinfonia_Orquestras1
    FOREIGN KEY (Orquestras_id_Orquestras)
    REFERENCES Escola_de_musica.Orquestras (id_Orquestras)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Escola_de_musica.Sinfonia_has_Instrumentos
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Escola_de_musica.Sinfonia_has_Instrumentos (
  Sinfonia_idSinfonia INT NOT NULL,
  Instrumentos_idInstrumentos INT NOT NULL,
  Musicos_CPF VARCHAR(14) NOT NULL,
  PRIMARY KEY (Sinfonia_idSinfonia, Musicos_CPF, Instrumentos_idInstrumentos),
  INDEX fk_Sinfonia_has_Instrumentos_Instrumentos1_idx (Instrumentos_idInstrumentos ASC) VISIBLE,
  INDEX fk_Sinfonia_has_Instrumentos_Sinfonia1_idx (Sinfonia_idSinfonia ASC) VISIBLE,
  INDEX fk_Sinfonia_has_Instrumentos_Musicos1_idx (Musicos_CPF ASC) VISIBLE,
  UNIQUE INDEX Sinfonia_idSinfonia_UNIQUE (Sinfonia_idSinfonia ASC) VISIBLE,
  UNIQUE INDEX Musicos_CPF_UNIQUE (Musicos_CPF ASC) VISIBLE,
  CONSTRAINT fk_Sinfonia_has_Instrumentos_Sinfonia1
    FOREIGN KEY (Sinfonia_idSinfonia)
    REFERENCES Escola_de_musica.Sinfonia (idSinfonia)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Sinfonia_has_Instrumentos_Instrumentos1
    FOREIGN KEY (Instrumentos_idInstrumentos)
    REFERENCES Escola_de_musica.Instrumentos (idInstrumentos)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Sinfonia_has_Instrumentos_Musicos1
    FOREIGN KEY (Musicos_CPF)
    REFERENCES Escola_de_musica.Musicos (CPF)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;