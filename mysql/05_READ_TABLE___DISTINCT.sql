USE mysql_westeros;

SELECT 
   last_name AS Surname
   FROM westerosi;

/*
   DISTINCT keyword only displays duplicate values once
*/
SELECT 
   DISTINCT last_name AS "distinct surnames"
   FROM westerosi;
