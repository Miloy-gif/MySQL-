SET SQL_MODE = '';


CREATE SCHEMA IF NOT EXISTS `bank` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `bank` ;

-- -----------------------------------------------------
-- Table `mydb`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank`.`department` (
  `idDepartment` INT NOT NULL,
  `DepartmentCity` VARCHAR(45) NULL,
  `CountOfWorkers` INT NULL,
  PRIMARY KEY (`idDepartment`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Client`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank`.`client` (
  `idClient` INT NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `Education` VARCHAR(45) NULL,
  `Passport` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `Age` VARCHAR(45) NULL,
  `Department_idDepartment` INT NOT NULL,
  PRIMARY KEY (`idClient`),
  INDEX `fk_Client_Department_idx` (`Department_idDepartment` ASC),
  CONSTRAINT `fk_Client_Department`
    FOREIGN KEY (`Department_idDepartment`)
    REFERENCES `bank`.`department` (`idDepartment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Application`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bank`.`application` (
  `idApplication` INT NOT NULL,
  `Sum` INT NULL,
  `CreditState` VARCHAR(45) NULL,
  `Currency` VARCHAR(45) NULL,
  `Client_idClient` INT NOT NULL,
  PRIMARY KEY (`idApplication`),
  INDEX `fk_Application_Client1_idx` (`Client_idClient` ASC),
  CONSTRAINT `fk_Application_Client1`
    FOREIGN KEY (`Client_idClient`)
    REFERENCES `bank`.`client` (`idClient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;





INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('1', 'Kyiv', '12');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('2', 'Lviv', '15');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('3', 'Rivne', '8');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('4', 'Kyiv', '16');
INSERT INTO `bank`.`department` (`idDepartment`, `DepartmentCity`, `CountOfWorkers`) VALUES ('5', 'Lviv', '10');

INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('1', 'Roman', 'Beregulak', 'high', 'KC249584', 'Lviv', '25', '2');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('2', 'Mariya', 'Pehnyk', 'high', 'KC350156', 'Stryi', '29', '2');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('3', 'Olena', 'Fedychkanych', 'middle', 'KC850145', 'Krasne', '19', '1');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('4', 'Igor', 'Petriv', 'technic', 'KC853952', 'Kyiv', '21', '4');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('5', 'Volodymyr', 'Gryniv', 'high', 'KC849153', 'Skvyra', '35', '4');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('6', 'Oleg', 'Fedyshyn', 'high', 'KC012412', 'Lviv', '42', '5');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('7', 'Taras', 'Sobko', 'middle', 'KC249504', 'Rivne', '20', '3');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('8', 'Viktor', 'Spas', 'technic', 'KC823412', 'Kyiv', '22', '2');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('9', 'Julia', 'Mokina', 'technic', 'KC908295', 'Kyiv', '21', '1');
INSERT INTO `bank`.`client` (`idClient`, `FirstName`, `LastName`, `Education`, `Passport`, `City`, `Age`, `Department_idDepartment`) VALUES ('10', 'Oksana', 'Indusiva', 'high', 'KC723532', 'Sambir', '32', '1');

INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('1', '4000', 'Returned', 'Dollar', '1');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('2', '5000', 'Not returned', 'Dollar', '4');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('3', '7500', 'Returned', 'Euro', '6');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('4', '3200', 'Not returned', 'Gryvnia', '2');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('5', '3700', 'Returned', 'Gryvnia', '3');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('6', '4100', 'Returned', 'Dollar', '1');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('7', '15100', 'Not returned', 'Gryvnia', '9');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('8', '25600', 'Not returned', 'Dollar', '10');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('9', '12300', 'Not returned', 'Gryvnia', '8');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('10', '9700', 'Returned', 'Dollar', '5');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('11', '9000', 'Not returned', 'Gryvnia', '7');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('12', '8100', 'Not returned', 'Dollar', '3');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('13', '4400', 'Not returned', 'Euro', '8');
INSERT INTO `bank`.`application` (`idApplication`, `Sum`, `CreditState`, `Currency`, `Client_idClient`) VALUES ('14', '2700', 'Returned', 'Dollar', '10');

--#1;
SELECT * FROM `bank`.`department`WHERE DepartmentCity ='Lviv';
SELECT * FROM `bank`.`client`WHERE City ='Lviv';
--#2;
SELECT * FROM `bank`.`client` WHERE LENGTH(FirstName) <6;
--#3;
SELECT * FROM `bank`.`client` WHERE Education = 'high' ORDER BY LastName ;
--#4;
SELECT * FROM `bank`.`application` ORDER BY idApplication DESC LIMIT 5 OFFSET 10;
--#5;
SELECT * FROM `bank`.`client` WHERE LastName LIKE '%OVA'OR LastName LIKE '%OV';
SELECT * FROM `bank`.`client` WHERE LastName LIKE '%a';

SELECT * FROM `bank`.`client` WHERE City ='Kyiv';

SELECT * FROM `bank`.`client` FirstName;
--#6;
SELECT FirstName, Age FROM `bank`.`client` GROUP BY firstName;
SELECT idApplication, Sum FROM `bank`.`application` GROUP BY idApplication;
--#7;
SELECT * FROM `bank`.`application` WHERE SUM > 5000;
--#8;
SELECT * FROM `bank`.`client` JOIN `bank`.`application` on Client_idClient = idClient 
WHERE sum > 5000;
--#9;
SELECT COUNT(idClient) AS City FROM `bank`.`client` where City = 'Kyiv';
--#10;
SELECT MAX(Sum) maxSum, FirstName, lastName FROM `bank`.`client` JOIN `bank`.`application` on Client_idClient = idClient
GROUP BY (idClient);
--#11;
SELECT COUNT(idClient) countSum, FirstName, lastName FROM `bank`.`client` JOIN `bank`.`application` on Client_idClient = idClient
GROUP BY (idClient);
--#12;
SELECT MAX(Sum) maxSum
FROM `bank`.`client`
JOIN `bank`.`application` on Client_idClient = idClient;
SELECT MIN(Sum) minSum
FROM `bank`.`client`
JOIN `bank`.`application` on Client_idClient = idClient;
--#13;
SELECT COUNT(idClient) countSum, FirstName, lastName
FROM  `bank`.`client`
JOIN `bank`.`application` on Client_idClient = idClient
WHERE Education = 'high'
GROUP BY (idClient);
--#14;
SELECT AVG(Sum) maxAvgSum, FirstName, lastName
FROM  `bank`.`client` JOIN `bank`.`application` on Client_idClient = idClient
GROUP BY (idClient)
ORDER BY (maxAvgSum) DESC
LIMIT 1;
--#15;
SELECT SUM(Sum) MaxMoney, Department_idDepartment
FROM  `bank`.`client` JOIN `bank`.`application` on Client_idClient = idClient
GROUP BY Department_idDepartment
ORDER BY (MaxMoney) DESC
LIMIT 1;

--#16;
SELECT SUM(Sum) MaxCredit, Department_idDepartment
FROM  `bank`.`client` JOIN `bank`.`application` on Client_idClient = idClient
GROUP BY Department_idDepartment
ORDER BY (MaxCredit) DESC
LIMIT 1;

--#17;
--#18;



--#19;
DELETE FROM `bank`.`application`
WHERE CreditState =  'Returned';

--#20;
SELECT * FROM `bank`.`client`
WHERE substr(LastName,2,1)in ('a','e', 'o','i', 'u', 'y');

--#21;
SELECT Max(Sum) MaxCredit, Department_idDepartment, DepartmentCity
FROM `bank`.`client`
JOIN `bank`.`application` on Client_idClient = idClient
JOIN `bank`.`department` on Department_idDepartment = idDepartment
WHERE DepartmentCity = 'Lviv' AND Sum > 5000
GROUP BY Department_idDepartment;

--#22;
SELECT Sum(Sum) maxSum, FirstName, lastName
FROM `bank`.`client`
JOIN `bank`.`application` on Client_idClient = idClient
WHERE CreditState = 'Returned' AND Sum > 5000
GROUP BY (Sum);

--#23;
SELECT MAX(Sum) maxSum, FirstName, lastName
FROM `bank`.`client`
JOIN `bank`.`application` on Client_idClient = idClient
WHERE CreditState = 'Not returned'
GROUP BY (Sum)
ORDER BY Sum DESC
LIMIT 1;

--#24;
SELECT MIN(Sum) maxSum, FirstName, lastName
FROM `bank`.`client`
JOIN `bank`.`application` on Client_idClient = idClient
WHERE CreditState = 'Not returned'
GROUP BY (Sum)
ORDER BY Sum
LIMIT 1;

--#25;
--#26;
--#27;






















