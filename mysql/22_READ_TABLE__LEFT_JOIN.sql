USE mysql_westeros;

-- LEFT JOIN is an example of OUTER JOIN
SELECT w.westerosi_id, w.first_name, w.last_name, k.ruler
   FROM westerosi AS w
   LEFT JOIN kingdoms AS k
      ON w.city = k.city;
