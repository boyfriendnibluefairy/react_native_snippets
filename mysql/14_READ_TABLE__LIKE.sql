USE mysql_westeros;

/*
   Use LIKE for string pattern matching.
   % sign is used to indicate any number of characters.
   _ sign is used to indicate one random character,
   For example, "___x" means any 3 characters plus x at the end.
*/

SELECT * FROM westerosi
   WHERE first_name LIKE "%ae%";

SELECT * FROM westerosi
   WHERE house LIKE "%ar%" OR
         last_name LIKE "_____";