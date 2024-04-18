USE mysql_westeros;

SELECT westerosi_id, first_name, city, ruler
   FROM westerosi AS w
   JOIN kingdoms AS k
      -- ON w.city = k.city -- replace this with USING if column names are the same
      USING (city)