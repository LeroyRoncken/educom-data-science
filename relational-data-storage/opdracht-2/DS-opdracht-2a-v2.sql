-- INDEX=0 COLUMNS --

SET SESSION sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

INSERT INTO mhl_suppliers (id)
     VALUES (0);
INSERT INTO mhl_rubrieken (id)
     VALUES (0);
INSERT INTO mhl_propertytypes (id)
     VALUES (0);
INSERT INTO mhl_companies (id)
     VALUES (0);
INSERT INTO pc_lat_long (id)
     VALUES (0);
INSERT INTO mhl_cities (id)
     VALUES (0);
INSERT INTO mhl_communes (id)
     VALUES (0);
INSERT INTO mhl_districts (id)
     VALUES (0);

SET SESSION sql_mode = '';



-- CONTACTS --

ALTER TABLE mhl_contacts ADD FOREIGN KEY (department) REFERENCES mhl_departments(id) ON DELETE RESTRICT ON UPDATE CASCADE;


UPDATE mhl_contacts
   SET supplier_ID=0
 WHERE mhl_contacts.supplier_ID NOT IN (SELECT id FROM mhl_suppliers)
    OR mhl_contacts.supplier_ID IS NULL;

ALTER TABLE mhl_contacts ADD FOREIGN KEY (supplier_ID) REFERENCES mhl_suppliers(id) ON DELETE CASCADE ON UPDATE CASCADE;



-- RUBRIEK --

UPDATE mhl_suppliers_mhl_rubriek_view
   SET mhl_rubriek_view_ID=0
 WHERE mhl_suppliers_mhl_rubriek_view.mhl_rubriek_view_ID NOT IN (SELECT id from mhl_rubrieken)
    OR mhl_suppliers_mhl_rubriek_view.mhl_rubriek_view_ID IS NULL;

ALTER TABLE mhl_suppliers_mhl_rubriek_view ADD FOREIGN KEY (mhl_rubriek_view_ID) REFERENCES mhl_rubrieken(id) ON DELETE RESTRICT ON UPDATE CASCADE;


UPDATE mhl_suppliers_mhl_rubriek_view
   SET mhl_suppliers_ID=0
 WHERE mhl_suppliers_mhl_rubriek_view.mhl_suppliers_ID NOT IN (SELECT id from mhl_suppliers)
    OR mhl_suppliers_mhl_rubriek_view.mhl_suppliers_ID IS NULL;

ALTER TABLE mhl_suppliers_mhl_rubriek_view ADD FOREIGN KEY (mhl_suppliers_ID) REFERENCES mhl_suppliers(id) ON DELETE CASCADE ON UPDATE CASCADE;



-- HITCOUNT --

ALTER TABLE mhl_hitcount
       DROP PRIMARY KEY,
        ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;

UPDATE mhl_hitcount
   SET supplier_ID=0
 WHERE mhl_hitcount.supplier_ID NOT IN (SELECT id FROM mhl_suppliers)
    OR mhl_hitcount.supplier_ID IS NULL;

ALTER TABLE mhl_hitcount ADD FOREIGN KEY (supplier_ID) REFERENCES mhl_suppliers(id) ON DELETE CASCADE ON UPDATE CASCADE;



-- PROPERTIES & DETAILS --

UPDATE mhl_properties
   SET propertytype_ID=0
 WHERE mhl_properties.propertytype_ID NOT IN (SELECT id FROM mhl_propertytypes)
    OR mhl_properties.propertytype_ID IS NULL;

ALTER TABLE mhl_properties ADD FOREIGN KEY (propertytype_ID) REFERENCES mhl_propertytypes(id) ON DELETE RESTRICT ON UPDATE CASCADE;


ALTER TABLE mhl_properties DROP INDEX supplier_ID;

UPDATE mhl_properties
   SET supplier_ID=0
 WHERE mhl_properties.supplier_ID NOT IN (SELECT id FROM mhl_suppliers)
    OR mhl_properties.supplier_ID IS NULL;

ALTER TABLE mhl_properties ADD FOREIGN KEY (supplier_ID) REFERENCES mhl_suppliers(id) ON DELETE CASCADE ON UPDATE CASCADE;


ALTER TABLE mhl_detaildefs ADD FOREIGN KEY (group_ID) REFERENCES mhl_detailgroups(id) ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE mhl_detaildefs DROP INDEX propertytype_ID;

ALTER TABLE mhl_detaildefs ADD FOREIGN KEY (propertytype_ID) REFERENCES mhl_propertytypes(id) ON DELETE RESTRICT ON UPDATE CASCADE;



-- COMPANIES --

UPDATE mhl_suppliers
   SET company=0
 WHERE mhl_suppliers.company NOT IN (SELECT id FROM mhl_companies)
    OR mhl_suppliers.company IS NULL;

ALTER TABLE mhl_suppliers ADD FOREIGN KEY (company) REFERENCES mhl_companies(id) ON DELETE RESTRICT ON UPDATE CASCADE;



-- MEMBERTYPES --

ALTER TABLE mhl_suppliers ADD FOREIGN KEY (membertype) REFERENCES mhl_membertypes(id) ON DELETE RESTRICT ON UPDATE CASCADE;



-- CITIES ETC. --

UPDATE mhl_suppliers
   SET city_ID=0
 WHERE mhl_suppliers.city_ID NOT IN (SELECT id FROM mhl_cities)
    OR mhl_suppliers.city_ID IS NULL;

ALTER TABLE mhl_suppliers ADD FOREIGN KEY (city_ID) REFERENCES mhl_cities(id) ON DELETE RESTRICT ON UPDATE CASCADE;

UPDATE mhl_cities
   SET commune_ID=0
 WHERE mhl_cities.commune_ID NOT IN (SELECT id FROM mhl_communes)
    OR mhl_cities.commune_ID IS NULL;

ALTER TABLE mhl_cities ADD FOREIGN KEY (commune_ID) REFERENCES mhl_communes(id) ON DELETE RESTRICT ON UPDATE CASCADE;

UPDATE mhl_communes
   SET district_ID=0
 WHERE mhl_communes.district_ID NOT IN (SELECT id FROM mhl_districts)
    OR mhl_communes.district_ID IS NULL;

ALTER TABLE mhl_communes ADD FOREIGN KEY (district_ID) REFERENCES mhl_districts(id) ON DELETE RESTRICT ON UPDATE CASCADE;