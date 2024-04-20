USE mysql_westeros;

SELECT first_name, last_name, "Poor" AS "social status"
   FROM westerosi
   WHERE wealth < 1000
UNION
SELECT first_name, last_name, "Middle Class" AS "social status"
   FROM westerosi
   WHERE wealth BETWEEN 1000 AND 10000
UNION
SELECT first_name, last_name, "Filthy Rich" AS "social status"
   FROM westerosi
   WHERE wealth > 10000
   ORDER BY last_name

