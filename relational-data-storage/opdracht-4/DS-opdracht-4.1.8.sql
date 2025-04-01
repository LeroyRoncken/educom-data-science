   SELECT ci1.name, ci2.name, ci1.id, ci2.id, co1.id, co2.id, co1.name, co2.name
     FROM mhl_cities ci1
          INNER JOIN mhl_cities ci2 ON ci1.name = ci2.name
          INNER JOIN mhl_communes co1 ON ci1.commune_ID = co1.id
          INNER JOIN mhl_communes co2 ON ci2.commune_ID = co2.id
    WHERE ci1.id < ci2.id
      AND co1.name IS NOT NULL
      AND co2.name IS NOT NULL
 ORDER BY ci1.name;