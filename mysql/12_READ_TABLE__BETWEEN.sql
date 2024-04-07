USE mysql_westeros;

/*
   Use BETWEEN to replace too many < and > symbols
*/

SELECT * FROM westerosi
   WHERE wealth BETWEEN 3000 AND 13000;
