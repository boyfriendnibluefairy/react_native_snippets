USE mysql_westeros;

/*
   Use NOT IN to reverse the effect of IN
*/

SELECT * FROM westerosi
   WHERE house NOT IN ("Hightower", "Targaryen", "Stark");