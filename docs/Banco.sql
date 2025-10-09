DROP SCHEMA IF EXISTS  `gestao_rh`;
CREATE SCHEMA IF NOT EXISTS `gestao_rh` DEFAULT CHARACTER SET utf8 ;
USE `gestao_rh` ;
CREATE TABLE IF NOT EXISTS `gestao_rh`.`Cargo` (
  `idCargo` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomeCargo` VARCHAR(64) NOT NULL,
  PRIMARY KEY (`idCargo`),
  UNIQUE INDEX `idCargo_UNIQUE` (`idCargo` ASC),
  UNIQUE INDEX `nomeCargo_UNIQUE` (`nomeCargo` ASC))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `gestao_rh`.`Funcionario` (
  `idFuncionario` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomeFuncionario` VARCHAR(128) NULL,
  `email` VARCHAR(64) NULL,
  `senha` VARCHAR(64) NULL,
  `recebeValeTransporte` TINYINT(1) NULL,
  `Cargo_idCargo` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`idFuncionario`),
  UNIQUE INDEX `idFuncionario_UNIQUE` (`idFuncionario` ASC),
  INDEX `fk_Funcionario_Cargo_idx` (`Cargo_idCargo` ASC),
  CONSTRAINT `fk_Funcionario_Cargo`
    FOREIGN KEY (`Cargo_idCargo`)
    REFERENCES `gestao_rh`.`Cargo` (`idCargo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `gestao_rh`.`Cargo` (`idCargo`, `nomeCargo`) VALUES (1, 'Administrador');
INSERT INTO `gestao_rh`.`Cargo` (`idCargo`, `nomeCargo`) VALUES (2, 'Técnico em Informática Jr');
INSERT INTO `gestao_rh`.`Cargo` (`idCargo`, `nomeCargo`) VALUES (3, 'Técnico em Informática Pleno');
INSERT INTO `gestao_rh`.`Cargo` (`idCargo`, `nomeCargo`) VALUES (4, 'Analista de Sistemas Jr');

INSERT INTO `gestao_rh`.`funcionario` (`nomeFuncionario`, `email`, `senha`, `recebeValeTransporte`, `Cargo_idCargo`) VALUES ('adm', 'adm@adm', '$2b$12$6ixafy0UKZx.A8ujEEDfnO2QH7IonQ/5/5UCqzQ51YvISdSO4VVle', 1, 1);
INSERT INTO `gestao_rh`.`funcionario` (`nomeFuncionario`, `email`, `senha`, `recebeValeTransporte`, `Cargo_idCargo`) VALUES ('Hélio', 'helioesperidiao@gmail.com', '$2b$12$6ixafy0UKZx.A8ujEEDfnO2QH7IonQ/5/5UCqzQ51YvISdSO4VVle', 1, 1);


