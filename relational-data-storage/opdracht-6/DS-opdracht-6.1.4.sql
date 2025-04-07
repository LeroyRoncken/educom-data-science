  SELECT IF(ISNULL(rp.name), r.name, CONCAT(rp.name, ' - ', r.name)) AS rubriek,
         SUM(h.hitcount) AS total

    FROM mhl_rubrieken AS rp
         RIGHT OUTER JOIN mhl_rubrieken AS r ON r.parent = rp.id
         INNER JOIN mhl_suppliers_mhl_rubriek_view AS srv ON r.id = srv.mhl_rubriek_view_ID
         INNER JOIN mhl_hitcount AS h ON h.supplier_ID = srv.mhl_suppliers_ID
GROUP BY rubriek
ORDER BY rubriek