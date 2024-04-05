USE mysql_westeros;

/*
   Use IN operator when OR statement in WHERE clause
   is getting out of hand.
*/

SELECT * FROM westerosi
   WHERE house IN ("Hightower", "Targaryen", "Stark");