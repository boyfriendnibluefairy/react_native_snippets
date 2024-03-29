/*
Syntax:
USE 
SELECT <columns> FROM table_name
   WHERE <column> = <value> -- optional
   ORDER BY <column>; -- optional
*/

DROP DATABASE IF EXISTS `mysql_westeros`;
CREATE DATABASE `mysql_westeros`;
USE `mysql_westeros`;

CREATE TABLE `westerosi` (
  `westerosi_id` INT(33) NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(33) NOT NULL,
  `last_name` VARCHAR(33) NOT NULL,
  `city` VARCHAR(33),
  `house` VARCHAR(33),
  `hasDragon` BOOL,
  `wealth` DOUBLE(33,2),
  PRIMARY KEY (`westerosi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `westerosi` (westerosi_id, first_name, last_name, city, house, hasDragon, wealth)
   VALUES (1,'Aegon','Targaryen', "King's Landing",'Targaryen', 1, 1000000);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Daenerys','Targaryen', 'Essos','Targaryen', 1, 1.0);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Tyrion','Lannister', 'Casterly Rock','Lannister', 0, 9000000);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Arya','Stark', 'Winterfell','Stark', 0, 9000);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Jon','Snow', 'Winterfell','Stark', 1, 6000);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Laenor','Velaryon', 'Driftmark','Velaryon', 1, 66000);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Renly','Baratheon', "Storm's End",'Baratheon', 0, 23000);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Rhaenyra','Targaryen', 'Dragonstone','Targaryen', 1, 19000);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Alicent','Hightower', 'Oldtown','Hightower', 0, 19000);
   
   
SELECT last_name, first_name, wealth FROM westerosi
   ORDER BY wealth DESC;