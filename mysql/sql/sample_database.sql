-- MySQL Script generated by MySQL Workbench
-- Thu Dec  6 12:12:28 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `foo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `foo` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bar` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `foo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_bar_foo_idx` (`foo_id` ASC),
  CONSTRAINT `fk_bar_foo`
    FOREIGN KEY (`foo_id`)
    REFERENCES `foo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bar_child`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bar_child` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `bar_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_bar_child_bar1_idx` (`bar_id` ASC),
  CONSTRAINT `fk_bar_child_bar1`
    FOREIGN KEY (`bar_id`)
    REFERENCES `bar` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `foo_child`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `foo_child` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `foo_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_foo_child_foo1_idx` (`foo_id` ASC),
  CONSTRAINT `fk_foo_child_foo1`
    FOREIGN KEY (`foo_id`)
    REFERENCES `foo` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bar_one_child`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bar_one_child` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `bar_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_bar_one_child_bar1_idx` (`bar_id` ASC),
  CONSTRAINT `fk_bar_one_child_bar1`
    FOREIGN KEY (`bar_id`)
    REFERENCES `bar` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


INSERT INTO `foo` (`id`, `name`) VALUES ('1', 'foo1');
INSERT INTO `foo` (`id`, `name`) VALUES ('2', 'foo2');

INSERT INTO `bar` (`id`, `name`, `foo_id`) VALUES ('1', 'bar1', '1');
INSERT INTO `bar` (`id`, `name`, `foo_id`) VALUES ('2', 'bar2', '1');
INSERT INTO `bar` (`id`, `name`, `foo_id`) VALUES ('3', 'bar3', '2');


INSERT INTO `bar_child` (`id`, `name`, `bar_id`) VALUES ('1', 'bar1_child1', '1');
INSERT INTO `bar_child` (`id`, `name`, `bar_id`) VALUES ('2', 'bar1_child2', '1');
INSERT INTO `bar_child` (`id`, `name`, `bar_id`) VALUES ('3', 'bar2_child1', '2');
INSERT INTO `bar_child` (`id`, `name`, `bar_id`) VALUES ('4', 'bar3_child1', '3');

INSERT INTO `bar_one_child` (`id`, `name`, `bar_id`) VALUES ('1', 'bar1_one_child', '1');
INSERT INTO `bar_one_child` (`id`, `name`, `bar_id`) VALUES ('2', 'bar2_one_child', '2');


INSERT INTO `foo_child` (`id`, `name`, `foo_id`) VALUES ('1', 'foo1_child', '1');

