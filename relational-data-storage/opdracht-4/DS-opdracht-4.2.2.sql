SELECT ci.name, IFNULL(co.name, "INVALID")
  FROM mhl_cities ci
       INNER JOIN mhl_communes co ON ci.commune_ID = co.id