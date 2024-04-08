USE mysql_westeros;

/*
   Use REGEXP for more compact pattern matching.
   The pipe "|" is used to search for multiple string patterns.
   Use "[]" to get patterns that contains individual characters
   liste in [] and adjacent characters external to [].
*/

SELECT * FROM westerosi
   -- -- line below is similar to WHERE last_name LIKE "%high%";
   -- WHERE last_name REGEXP "high";
   -- -- line below is similar to WHERE last_name LIKE "high%";
   -- WHERE last_name REGEXP "^high";
   -- -- line below is similar to WHERE city LIKE "%fell";
   WHERE city REGEXP "fell$";
   
-- Find last_name with either "yen" or "yon"
SELECT * FROM westerosi
   -- WHERE last_name REGEXP "yen|yon";
   WHERE last_name REGEXP "y[eo]n";
   
-- Find city that starts with with either "dragon" or "drift"
-- or ends with "fell"
SELECT * FROM westerosi
   WHERE city REGEXP "^dragon|fell$|^drift";
   
-- Find first_name with either "ty" or "ly" or "ny"
SELECT * FROM westerosi
   WHERE first_name REGEXP "[tln]y";
