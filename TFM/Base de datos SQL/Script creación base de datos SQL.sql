-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema alimentos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema alimentos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `alimentos` DEFAULT CHARACTER SET utf8 ;
USE `alimentos` ;

-- -----------------------------------------------------
-- Table `alimentos`.`fuzzy_match`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `alimentos`.`fuzzy_match` (
  `url` VARCHAR(300) NULL DEFAULT NULL,
  `supermarket` VARCHAR(100) NULL DEFAULT NULL,
  `category` VARCHAR(100) NULL DEFAULT NULL,
  `name` LONGTEXT NULL DEFAULT NULL,
  `description` LONGTEXT NULL DEFAULT NULL,
  `price` FLOAT NULL DEFAULT NULL,
  `reference_price` FLOAT NULL DEFAULT NULL,
  `reference_unit` VARCHAR(10) NULL DEFAULT NULL,
  `product_name` TINYTEXT NULL DEFAULT NULL,
  `medida_similitud` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `alimentos`.`merge`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `alimentos`.`merge` (
  `id_food` INT NULL DEFAULT NULL,
  `product_name` VARCHAR(200) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `brands` VARCHAR(250) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `categories_en` VARCHAR(1000) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `countries_en` LONGTEXT CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `nutriscore_grade` VARCHAR(1) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `food_groups_en` VARCHAR(70) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `main_category_en` LONGTEXT CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `energy_kcal_100g` INT NULL DEFAULT NULL,
  `fat_100g` INT NULL DEFAULT NULL,
  `saturated_fat_100g` INT NULL DEFAULT NULL,
  `carbohydrates_100g` INT NULL DEFAULT NULL,
  `sugars_100g` INT NULL DEFAULT NULL,
  `proteins_100g` INT NULL DEFAULT NULL,
  `salt_100g` INT NULL DEFAULT NULL,
  `url` VARCHAR(300) NULL DEFAULT NULL,
  `supermarket` VARCHAR(100) NULL DEFAULT NULL,
  `category` VARCHAR(100) NULL DEFAULT NULL,
  `name` LONGTEXT NULL DEFAULT NULL,
  `description` LONGTEXT NULL DEFAULT NULL,
  `price` FLOAT NULL DEFAULT NULL,
  `reference_price` FLOAT NULL DEFAULT NULL,
  `reference_unit` VARCHAR(10) NULL DEFAULT NULL,
  `product_name_copy1` VARCHAR(300) NULL DEFAULT NULL,
  `medida_similitud` FLOAT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `alimentos`.`open_food`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `alimentos`.`open_food` (
  `id_food` INT NOT NULL,
  `product_name` VARCHAR(200) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `brands` VARCHAR(250) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `categories_en` VARCHAR(1000) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `countries_en` LONGTEXT CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `nutriscore_grade` VARCHAR(1) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `food_groups_en` VARCHAR(70) CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `main_category_en` LONGTEXT CHARACTER SET 'utf8' NULL DEFAULT NULL,
  `energy-kcal_100g` INT NULL DEFAULT NULL,
  `fat_100g` INT NULL DEFAULT NULL,
  `saturated-fat_100g` INT NULL DEFAULT NULL,
  `carbohydrates_100g` INT NULL DEFAULT NULL,
  `sugars_100g` INT NULL DEFAULT NULL,
  `proteins_100g` INT NULL DEFAULT NULL,
  `salt_100g` INT NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `alimentos`.`supermercado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `alimentos`.`supermercado` (
  `url` VARCHAR(300) NULL DEFAULT NULL,
  `supermarket` VARCHAR(100) NULL DEFAULT NULL,
  `category` VARCHAR(100) NULL DEFAULT NULL,
  `name` LONGTEXT NULL DEFAULT NULL,
  `description` LONGTEXT NULL DEFAULT NULL,
  `price` FLOAT NULL DEFAULT NULL,
  `reference_price` FLOAT NULL DEFAULT NULL,
  `reference_unit` VARCHAR(10) NULL DEFAULT NULL,
  `date` DATE NULL DEFAULT curdate())
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
