USE mysql_westeros;
SELECT * FROM westerosi;

/*
   Syntax:
   DELETE FROM table_name
   WHERE <condition>
*/

-- delete all records from westerosi
DELETE FROM westerosi;

-- delete selected rows
DELETE FROM westerosi
WHERE westerosi_id = 16