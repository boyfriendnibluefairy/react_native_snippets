USE mysql_westeros;

/*
   When updating multiple rows in MySQL Workbench,
   Click MySQLWorkbench > Preferences > SQL Editor
   untick "Safe Updates" then disconnect and connect to 
   the local instance of the server.
*/


SELECT * FROM westerosi;

UPDATE westerosi
SET city = "King's Landing", wealth=null
-- WHERE first_name = "Daemon"
WHERE westerosi_id = 16;


-- mutiple rows updates
UPDATE westerosi
SET city = "King's Landing", hasDragon =1
WHERE last_name = "Targaryen";

