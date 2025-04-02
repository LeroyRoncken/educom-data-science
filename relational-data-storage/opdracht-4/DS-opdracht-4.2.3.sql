  SELECT r2.id,
         IFNULL(r.name, r2.name) AS Rubriek,
         IF(ISNULL(r.name), '', r2.name) AS Subrubriek
    FROM mhl_rubrieken AS r
         INNER JOIN mhl_rubrieken AS r2 ON r.id = r2.parent
ORDER BY Rubriek, Subrubriek;