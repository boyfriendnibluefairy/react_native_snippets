USE mysql_westeros;

/*
Use "AS" keyword to add alias to each column 
to rename column_names in the table.
*/
SELECT 
   first_name AS Name, 
   last_name AS Surname, 
   wealth AS "Iron Bank Account",
   wealth+333 AS "Updated Wealth"
   FROM westerosi