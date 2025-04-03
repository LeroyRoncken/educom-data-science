 SELECT s.name,
        IFNULL(d.contact, "t.a.v. de directie") AS contact,
        v.adres,
        v.postcode,
        v.stad
   FROM mhl_suppliers s
        LEFT JOIN v_verzendlijst v ON v.id = s.id
        LEFT JOIN v_directie d ON d.supplier_ID = s.id