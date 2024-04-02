USE mysql_westeros;

/*
   AND displays records for conditions that are both true
*/

SELECT *
FROM westerosi;

SELECT *
  FROM westerosi
  WHERE wealth > 10000 AND hasDragon;