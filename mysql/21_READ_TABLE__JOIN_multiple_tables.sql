USE mysql_westeros;

CREATE TABLE `essos_kingdoms` (
  `city` VARCHAR(33) NOT NULL,
  `isFreeCity` TINYINT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Astapor",0);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Meereen",0);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Valyria",0);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Qarth",0);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Braavos",1);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Lorath",1);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Lys",1);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Myr",1);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Norvos",1);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Pentos",1);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Qohor",1);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Tyrosh",1);
INSERT INTO `essos_kingdoms` (city, isFreeCity) VALUES ("Volantis",1);

INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Grey','Worm', 'Astapor','Targaryen', 0, 0);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Melisandre','', 'Asshai','Baratheon', 0, 0);
INSERT INTO `westerosi` (first_name, last_name, city, house, hasDragon, wealth)
   VALUES ('Daario','Naharis', 'Tyrosh','Targaryen', 0, 9600);

DROP TABLE IF EXISTS kingdoms;

CREATE TABLE `kingdoms` (
  `city` VARCHAR(33) NOT NULL,
  `ruler` VARCHAR(33) NOT NULL,
  `house` VARCHAR(33)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("King's Landing",'Aegon Targaryen', 'Targaryen');
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Winterfell",'Sansa Stark', 'Stark');
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Vale",'Robyn Arryn', 'Arryn');
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Casterly Rock",'Tyrion Lannister', "Lannister");
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Driftmark",'Seasnake Velaryon', "Velaryon");
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Dragonstone",'Rhaenyra Targaryen', 'Targaryen');
INSERT INTO `kingdoms` (city, ruler, house) VALUES ("Storm's End",'Stannis Baratheon', 'Baratheon');




SELECT * FROM westerosi;
SELECT * FROM kingdoms;
SELECT * FROM essos_kingdoms;

-- Westerosi employers with employees from the free city
SELECT
   k.ruler AS employer,
   w.first_name,
   w.last_name,
   w.house,
   IF(ek.isFreeCity = 1, "from Free City", "Essos") AS "free city"
   FROM westerosi AS w
   JOIN kingdoms AS k
      ON k.house = w.house
   JOIN essos_kingdoms AS ek
      ON w.city = ek.city














