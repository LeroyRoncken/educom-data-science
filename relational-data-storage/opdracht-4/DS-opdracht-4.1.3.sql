SELECT s.name, straat, huisnr, postcode, r2.name
  FROM mhl_suppliers AS s
       INNER JOIN mhl_cities AS c ON s.city_ID = c.id
       INNER JOIN mhl_suppliers_mhl_rubriek_view AS rv ON s.id = rv.mhl_suppliers_ID
       INNER JOIN mhl_rubrieken AS r ON r.id = rv.mhl_rubriek_view_ID
       INNER JOIN mhl_rubrieken AS r2 ON r.id = r2.parent
 WHERE c.name = "amsterdam" AND r.name = "drank"
 ORDER BY r2.name;