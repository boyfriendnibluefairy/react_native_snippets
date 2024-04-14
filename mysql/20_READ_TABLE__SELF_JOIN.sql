USE mysql_westeros;
 

SELECT 
   w.westerosi_id,
   w.first_name,
   w.last_name,
   k.ruler AS supervisor
   FROM westerosi as w
   JOIN kingdoms as k
   ON w.city = k.city
 