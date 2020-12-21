-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`artefact_roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`artefact_roles` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`projects`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`projects` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`artefacts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`artefacts` (
  `id` INT NOT NULL,
  `unique_name` VARCHAR(45) NOT NULL,
  `projects_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unique_name_UNIQUE` (`unique_name` ASC) VISIBLE,
  INDEX `fk_artefacts_projects1_idx` (`projects_id` ASC) VISIBLE,
  CONSTRAINT `fk_artefacts_projects1`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`persons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`persons` (
  `id` INT NOT NULL,
  `username` VARCHAR(45) NOT NULL,
  `publickey` JSON NULL DEFAULT NULL,
  `qualities` JSON NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`tasks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tasks` (
  `id` INT NOT NULL,
  `details` JSON NULL DEFAULT NULL,
  `projects_id` INT NOT NULL,
  `persons_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tasks_projects1_idx` (`projects_id` ASC) VISIBLE,
  INDEX `fk_tasks_persons1_idx` (`persons_id` ASC) VISIBLE,
  CONSTRAINT `fk_tasks_persons1`
    FOREIGN KEY (`persons_id`)
    REFERENCES `mydb`.`persons` (`id`),
  CONSTRAINT `fk_tasks_projects1`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`artefact_links`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`artefact_links` (
  `artefact_roles_id` INT NOT NULL,
  `artefacts_id` INT NOT NULL,
  `tasks_id` INT NOT NULL,
  INDEX `fk_artefact_links_artefact_roles1_idx` (`artefact_roles_id` ASC) VISIBLE,
  INDEX `fk_artefact_links_artefacts1_idx` (`artefacts_id` ASC) VISIBLE,
  INDEX `fk_artefact_links_tasks1_idx` (`tasks_id` ASC) VISIBLE,
  CONSTRAINT `fk_artefact_links_artefact_roles1`
    FOREIGN KEY (`artefact_roles_id`)
    REFERENCES `mydb`.`artefact_roles` (`id`),
  CONSTRAINT `fk_artefact_links_artefacts1`
    FOREIGN KEY (`artefacts_id`)
    REFERENCES `mydb`.`artefacts` (`id`),
  CONSTRAINT `fk_artefact_links_tasks1`
    FOREIGN KEY (`tasks_id`)
    REFERENCES `mydb`.`tasks` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`dictionary`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`dictionary` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `comment` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`issues`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`issues` (
  `id` INT NOT NULL,
  `data` JSON NULL DEFAULT NULL,
  `unique_name` VARCHAR(45) NOT NULL,
  `projects_id` INT NOT NULL,
  `persons_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unique_name_UNIQUE` (`unique_name` ASC) VISIBLE,
  INDEX `fk_issues_projects1_idx` (`projects_id` ASC) VISIBLE,
  INDEX `fk_issues_persons1_idx` (`persons_id` ASC) VISIBLE,
  CONSTRAINT `fk_issues_persons1`
    FOREIGN KEY (`persons_id`)
    REFERENCES `mydb`.`persons` (`id`),
  CONSTRAINT `fk_issues_projects1`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`milestone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`milestone` (
  `id` INT NOT NULL,
  `data` JSON NULL DEFAULT NULL,
  `unique_name` VARCHAR(45) NOT NULL,
  `projects_id` INT NOT NULL,
  `persons_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `unique_name_UNIQUE` (`unique_name` ASC) VISIBLE,
  INDEX `fk_milestone_projects1_idx` (`projects_id` ASC) VISIBLE,
  INDEX `fk_milestone_persons1_idx` (`persons_id` ASC) VISIBLE,
  CONSTRAINT `fk_milestone_persons1`
    FOREIGN KEY (`persons_id`)
    REFERENCES `mydb`.`persons` (`id`),
  CONSTRAINT `fk_milestone_projects1`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`roles` (
  `id` INT NOT NULL,
  `permision` INT NOT NULL,
  `dictionary_id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_roles_projects1_idx` (`projects_id` ASC) VISIBLE,
  INDEX `fk_roles_dictionary_idx` (`dictionary_id` ASC) VISIBLE,
  CONSTRAINT `fk_roles_dictionary`
    FOREIGN KEY (`dictionary_id`)
    REFERENCES `mydb`.`dictionary` (`id`),
  CONSTRAINT `fk_roles_projects1`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`role_links`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`role_links` (
  `roles_id` INT NOT NULL,
  `persons_id` INT NOT NULL,
  INDEX `fk_role_links_roles1_idx` (`roles_id` ASC) VISIBLE,
  INDEX `fk_role_links_persons1_idx` (`persons_id` ASC) VISIBLE,
  CONSTRAINT `fk_role_links_persons1`
    FOREIGN KEY (`persons_id`)
    REFERENCES `mydb`.`persons` (`id`),
  CONSTRAINT `fk_role_links_roles1`
    FOREIGN KEY (`roles_id`)
    REFERENCES `mydb`.`roles` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`signatures`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`signatures` (
  `data` JSON NULL DEFAULT NULL,
  `roles_id` INT NOT NULL,
  `tasks_id` INT NOT NULL,
  `persons_id` INT NOT NULL,
  INDEX `fk_signatures_roles_idx` (`roles_id` ASC) VISIBLE,
  INDEX `fk_signatures_tasks1_idx` (`tasks_id` ASC) VISIBLE,
  INDEX `fk_signatures_persons1_idx` (`persons_id` ASC) VISIBLE,
  CONSTRAINT `fk_signatures_persons1`
    FOREIGN KEY (`persons_id`)
    REFERENCES `mydb`.`persons` (`id`),
  CONSTRAINT `fk_signatures_roles`
    FOREIGN KEY (`roles_id`)
    REFERENCES `mydb`.`roles` (`id`),
  CONSTRAINT `fk_signatures_tasks1`
    FOREIGN KEY (`tasks_id`)
    REFERENCES `mydb`.`tasks` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
