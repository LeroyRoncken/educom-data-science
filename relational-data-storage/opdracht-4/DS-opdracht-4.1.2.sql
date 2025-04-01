SELECT s.name, straat, huisnr, postcode, c.name
  FROM mhl_suppliers AS s
       INNER JOIN mhl_cities AS c ON s.city_ID = c.id
       INNER JOIN mhl_communes AS cm ON c.commune_ID = cm.id
 WHERE cm.name = "steenwijkerland";