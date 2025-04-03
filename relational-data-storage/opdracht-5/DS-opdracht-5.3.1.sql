CREATE VIEW v_directie
         AS
     SELECT c.supplier_ID,
            c.name AS contact,
            c.contacttype AS functie,
            d.name AS departement
       FROM mhl_contacts c
            LEFT JOIN mhl_departments d ON c.department = d.id
      WHERE (d.name = "Directie") OR (contacttype LIKE "%directeur%");