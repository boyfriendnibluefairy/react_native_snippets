USE mysql_westeros;

SELECT * FROM westerosi;

-- return the first 3 westerosi
SELECT * FROM westerosi
   LIMIT 3;
   
-- LIMIT offset, range
-- skip first 6 records, then return the next three records
SELECT * FROM westerosi
   LIMIT 6, 3


