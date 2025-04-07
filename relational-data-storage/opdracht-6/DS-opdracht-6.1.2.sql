  SELECT avg.gemeente, tot.leverancier, tot.total_hitcount, avg.average_hitcount
    FROM (
         SELECT co.id AS ID,
                s.name AS leverancier,
                SUM(h.hitcount) AS total_hitcount
           FROM mhl_suppliers AS s
                INNER JOIN mhl_hitcount AS h ON h.supplier_ID = s.id
                INNER JOIN mhl_cities AS ci ON ci.id = s.city_ID
                INNER JOIN mhl_communes AS co ON co.id = ci.commune_ID
                INNER JOIN mhl_districts d ON co.district_ID=d.id
                WHERE d.country_ID = (
                    SELECT id
                    FROM mhl_countries
                    WHERE name = "Nederland"
                )
         GROUP BY co.id, s.name
         ) AS tot
         INNER JOIN (
              SELECT co.id AS ID,
                     co.name AS gemeente,
                     AVG(h.hitcount) AS average_hitcount
                FROM mhl_suppliers AS s
                     INNER JOIN mhl_hitcount AS h ON h.supplier_ID = s.id
                     INNER JOIN mhl_cities AS ci ON ci.id = s.city_ID
                     INNER JOIN mhl_communes AS co ON co.id = ci.commune_ID
            GROUP BY co.id
         ) AS avg ON avg.ID = tot.ID
GROUP BY avg.ID, tot.leverancier
  HAVING tot.total_hitcount > avg.average_hitcount
ORDER BY avg.gemeente, (tot.total_hitcount - avg.average_hitcount) DESC