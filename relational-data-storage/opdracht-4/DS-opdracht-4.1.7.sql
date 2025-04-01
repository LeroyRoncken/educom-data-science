   SELECT ci1.name, ci2.name, ci1.id, ci2.id, ci1.commune_ID, ci2.commune_ID
     FROM mhl_cities ci1
          INNER JOIN mhl_cities ci2 ON ci1.name = ci2.name
    WHERE ci1.id < ci2.id
 ORDER BY ci1.name;