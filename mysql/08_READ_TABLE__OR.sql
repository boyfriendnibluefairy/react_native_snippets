USE mysql_westeros;

/*
   OR displays records if any of conditions is true
*/

SELECT *
FROM westerosi;

SELECT *
  FROM westerosi
  WHERE house = "Targaryen" OR hasDragon;