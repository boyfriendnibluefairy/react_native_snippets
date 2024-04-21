/*
   Click the gear/wrench icon beside the table name.
   Column name
   Datatype
   PK = primary key
   NN = not null -- means field can only accept not null values
   AI = auto increment

   When the primary key is auto incremented, mysql remembers the id of the
   deleted records that's why sometimes the autoincrement behaves not as
   expected.

   To copy table contents from old table to new table:

   CREATE TABLE westerosi_archived AS
      SELECT *
      FROM westerosi
      WHERE hasDragon = 1
*/
USE mysql_westeros;

SELECT * FROM westerosi;

INSERT INTO westerosi
(westerosi_id, first_name, last_name, city, house, hasDragon, wealth)
VALUES (DEFAULT, "Daemon", "Targaryen", "Dragonstone", "Targaryen", 1, 6300)


