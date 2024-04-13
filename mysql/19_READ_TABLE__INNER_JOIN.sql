USE mysql_westeros;

SELECT * FROM westerosi;

CREATE TABLE `kingdoms` (
  `city` VARCHAR(33) NOT NULL,
  `ruler` VARCHAR(33) NOT NULL,
  `house` VARCHAR(33)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("King's Landing",'Aegon Targaryen');
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Winterfell",'Sansa Stark');
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Vale",'Robyn Arryn');
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Casterly Rock",'Tyrion Lannister');
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Driftmark",'Seasnake Velaryon');
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Dragonstone",'Rhaenyra Targaryen');

SELECT *
   FROM westerosi AS w
   INNER JOIN kingdoms AS k
      ON w.city = k.city

