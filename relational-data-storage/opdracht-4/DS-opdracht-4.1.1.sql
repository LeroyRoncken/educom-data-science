SELECT s.name, straat, huisnr, postcode
  FROM mhl_suppliers AS s
       INNER JOIN mhl_cities AS c ON s.city_ID = c.id
 WHERE c.name = "amsterdam";