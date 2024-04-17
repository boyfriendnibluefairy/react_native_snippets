USE mysql_westeros;

-- RIGHT JOIN is an example of OUTER JOIN
-- As much as possible, avoid RIGHT JOIN and use LEFT JOIN instead.
SELECT w.westerosi_id, w.first_name, w.last_name, k.ruler
   FROM westerosi AS w
   RIGHT JOIN kingdoms AS k
      ON w.city = k.city;