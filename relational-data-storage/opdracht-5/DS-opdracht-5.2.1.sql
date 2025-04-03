  SELECT s.name AS leverancier,
         IFNULL(con.name, "t.a.v. de directie") AS aanhef,
         IF(s.p_address<>'', s.p_address, CONCAT(s.straat, ' ', s.huisnr)) AS adres,
         IF(s.p_address<>'', s.p_postcode, s.postcode) AS postcode,
         IF(s.p_address<>'', pci.name, ci.name) AS stad,
         IF(s.p_address<>'', pdi.name, di.name) AS provincie
    FROM mhl_suppliers AS s
         LEFT JOIN mhl_contacts AS con ON s.id = con.supplier_ID
         LEFT JOIN mhl_cities AS ci ON s.city_ID = ci.id
         LEFT JOIN mhl_communes AS co ON ci.commune_ID = co.id
         LEFT JOIN mhl_districts AS di ON co.district_ID = di.id
         LEFT JOIN mhl_cities AS pci ON s.p_city_ID = pci.id
         LEFT JOIN mhl_communes AS pco ON pci.commune_ID = pco.id
         LEFT JOIN mhl_districts AS pdi ON pco.district_ID = pdi.id
   WHERE postcode <> ''
ORDER BY provincie, stad, leverancier;