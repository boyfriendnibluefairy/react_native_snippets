/*
   Syntax:
   USE database_name;
   CREATE TABLE IF NOT EXISTS table_name
   (
      column1 datatype,
      column2 datatype,
      column3 datatype,
      ...
   );
   
   Numeric Data Types:
      BOOL            -> zero is false, nonzero is true
      INT(size)       -> size is max display width
      DOUBLE(size, d) -> size is total number of digits
                      -> number of digits after decimal points
      
   String Data Types:
      VARCHAR(size) -> maximum column length in characters
      TEXT(size)    -> string with max length of 65_000
      BLOB          -> up to 65_000 bytes of data
      LONGBLOB      -> 4.3 GB
      
   Date and Time Data Types:
      DATE -> YYYY-MM-DD
      TIME -> hh:mm:ss
      DATETIME
      YEAR
      TIMESTAMP
*/

USE db_westerosi;

DROP TABLE db_westerosi.Targaryens;

CREATE TABLE IF NOT EXISTS Targaryens
(
   PersonID INT,
   LastName VARCHAR(255),
   FirstName VARCHAR(255),
   HasDragon BOOL
);

INSERT INTO db_westerosi.Targaryens (PersonID, LastName, FirstName, HasDragon)
   VALUES(1, "Targaryen", "Aegon", 1);
   
INSERT INTO db_westerosi.Targaryens (PersonID, LastName, FirstName, HasDragon)
   VALUES(2, "Snow", "Jon", 0);

INSERT INTO db_westerosi.Targaryens (PersonID, LastName, FirstName, HasDragon)
   VALUES(3, "Targaryen", "Daenerys", 1);

   