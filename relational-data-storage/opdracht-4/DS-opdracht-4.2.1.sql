SELECT ci.name, co.id AS commune_ID
  FROM mhl_cities ci
       INNER JOIN mhl_communes co ON ci.commune_ID = co.id
 WHERE co.name IS NULL