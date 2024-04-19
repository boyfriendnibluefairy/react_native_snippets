USE mysql_westeros;

SELECT westerosi_id, first_name AS name, last_name AS surname, coin AS coins
   FROM westerosi
   CROSS JOIN currency