USE mysql_westeros;

INSERT INTO westerosi
(
   first_name,
   last_name,
   city,
   house,
   hasDragon,
   wealth
)
VALUES
(
   "Otto",
   "Hightower",
   "Oldtown",
   "Hightower",
   0,
   NULL
);

INSERT INTO westerosi
(
   first_name,
   last_name,
   city,
   house,
   hasDragon,
   wealth
)
VALUES
(
   "Peter",
   "Baelish",
   "Vale",
   NULL,
   0,
   666000
);

INSERT INTO westerosi
(
   first_name,
   last_name,
   city,
   house,
   hasDragon,
   wealth
)
VALUES
(
   "Varys",
   "",
   "Essos",
   NULL,
   0,
   666000
);

SELECT * FROM westerosi
   WHERE wealth IS NULL;
   
SELECT * FROM westerosi
   WHERE house IS NULL;
   
SELECT * FROM westerosi
   WHERE house IS NOT NULL;

   