CREATE VIEW v_verzendlijst
         AS
     SELECT s.id,
            IF(s.p_address<>'', s.p_address, CONCAT(s.straat, ' ', s.huisnr)) AS adres,
            IF(s.p_address<>'', s.p_postcode, s.postcode) AS postcode,
            IF(s.p_address<>'', pci.name, ci.name) AS stad
       FROM mhl_suppliers AS s
            LEFT JOIN mhl_cities AS ci ON s.city_ID = ci.id
            LEFT JOIN mhl_cities AS pci ON s.p_city_ID = pci.id