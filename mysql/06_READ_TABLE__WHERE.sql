USE mysql_westeros;

/*
   Operators:
   >
   >=
   <
   <=
   =
   !=   -- not equal
   <>   -- not equal
*/
SELECT * FROM westerosi;

SELECT * FROM westerosi
   WHERE wealth < 10000;
   
SELECT * FROM westerosi
   WHERE city = "Winterfell";
   
SELECT * FROM westerosi
   WHERE city <> "Winterfell";
