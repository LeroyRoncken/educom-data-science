-- SELECT *
--     --    s.name AS supplier,
--     --    pt.name AS property_type
--   FROM mhl_suppliers AS s
--        INNER JOIN mhl_cities AS c ON s.city_ID = c.id
--        INNER JOIN mhl_properties AS p ON p.supplier_ID = s.id
--        INNER JOIN mhl_propertytypes AS pt ON p.propertytype_ID = pt.id
--  WHERE c.name = "amsterdam"
--    AND pt.proptype = "A";


SELECT s.name AS supplier,
       pt.name AS property_type,
       IFNULL(p.content, "NOT SET") AS value
  FROM mhl_suppliers AS s
       INNER JOIN mhl_cities AS c ON s.city_ID = c.id
       CROSS JOIN mhl_propertytypes AS pt
        LEFT JOIN mhl_yn_properties AS p ON
                  p.supplier_ID = s.id AND
                  p.propertytype_ID = pt.id
 WHERE c.name = "amsterdam"
   AND pt.proptype = "A";