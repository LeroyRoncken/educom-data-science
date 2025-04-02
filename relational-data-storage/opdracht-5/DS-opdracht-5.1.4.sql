  SELECT s.name,
         SUM(hitcount) AS hits,
         COUNT(month) AS months,
         ROUND(AVG(hitcount),0) AS avg
    FROM mhl_hitcount h
         INNER JOIN mhl_suppliers s ON s.id=h.supplier_ID
GROUP BY s.name
  HAVING hits > 100
ORDER BY avg DESC