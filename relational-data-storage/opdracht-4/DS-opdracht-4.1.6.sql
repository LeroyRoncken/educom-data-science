SELECT s.name, ci.name, co.name, d.name
  FROM mhl_suppliers s
       INNER JOIN mhl_cities ci ON s.city_ID = ci.id
       INNER JOIN mhl_communes co ON ci.commune_ID = co.id
       INNER JOIN mhl_districts d ON co.district_ID = d.id
       INNER JOIN mhl_hitcount h ON s.id = h.supplier_ID
WHERE h.year = 2014
  AND h.month = 1
  AND d.name IN ("Noord-Brabant", "Limburg", "Zeeland");