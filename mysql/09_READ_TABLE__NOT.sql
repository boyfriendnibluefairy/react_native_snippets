USE mysql_westeros;

/*
   Use NOT to get a subset that does not belong to an expression
*/

SELECT *
FROM westerosi;

SELECT *
  FROM westerosi
  WHERE house = "Targaryen" OR hasDragon;
  
SELECT *
  FROM westerosi
  WHERE NOT(house = "Targaryen" OR hasDragon);