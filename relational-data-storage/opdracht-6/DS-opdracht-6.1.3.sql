  SELECT IF(ISNULL(rp.name), r.name, CONCAT(rp.name, ' - ', r.name)) AS rubriek,
         COUNT(srv.mhl_suppliers_ID) AS numsup
    FROM mhl_rubrieken AS rp
         RIGHT OUTER JOIN mhl_rubrieken AS r ON r.parent = rp.id
         INNER JOIN mhl_suppliers_mhl_rubriek_view AS srv ON r.id = srv.mhl_rubriek_view_ID
GROUP BY rubriek
ORDER BY rubriek