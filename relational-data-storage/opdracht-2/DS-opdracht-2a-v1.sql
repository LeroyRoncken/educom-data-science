ALTER TABLE pc_lat_long
DROP FOREIGN KEY pc6;

ALTER TABLE mhl_suppliers
ADD CONSTRAINT FK_PostcodeSupplier
FOREIGN KEY (postcode) REFERENCES pc_lat_long(id);

ALTER TABLE mhl_hitcount
ADD CONSTRAINT FK_SupplierHitcount
FOREIGN KEY (supplier_ID) REFERENCES mhl_suppliers(id);



-- De colommen "postcode" en "p_postcode" in mhl_suppliers moeten opgeschoond worden: ALles in hoofdletters en alle spaties verwijderen. Hetzelfde moet gebeuren bij pc_lat_long, colom "pc6".

-- SUPPLIERS heeft twee nieuwe FK's nodig, maak hiervoor een nieuwe colom aan, genaamd "postcode_ID" en een nieuwe genaamd "p_postcode_ID".

-- Valideer data met: 
    -- SELECT postcode
    -- FROM mhl_suppliers
    -- WHERE postcode NOT IN (SELECT pc6 FROM pc_lat_long);

-- Afhankelijk van wat uit de validatie naar voren komt, voeg postcodes toe aan pc_lat_long, verwijder de entries, of maak ze NULL.

-- Creëer een FK in mhl_suppliers voor "postcode_ID", waar "postcode" overeenkomt met "pc6" in pc_lat_long {werk dit verder uit: FOREIGN KEY (postcode_ID) REFERENCES pc_lat_long(id);}, houd ook rekening met NULL waardes en zorg dat de code deze negeert. Doe ditzelfde voor "p_postcode_ID" waar "p_postcode" overeenkomt met "pc6".

-- Indien succesvol, verwijder postcode en p_postcode in mhl_suppliers.

-- Optioneel: hernoem "pc6" naar "postcode".



-- Step 1: Identify and drop existing foreign key constraints
-- Drop any foreign key constraints related to "postcode" (replace 'fk_constraint_name' with the actual constraint name)
    ALTER TABLE suppliers DROP CONSTRAINT fk_constraint_name;

-- Step 2: Clean up the postcodes in both tables
-- Update postcodes in the "postcodes" table to remove spaces and standardize capitalization
    UPDATE postcodes
    SET postcode = UPPER(REPLACE(postcode, ' ', ''));

-- Similarly, clean up the "postcode" column in the "suppliers" table
    UPDATE suppliers
    SET postcode = UPPER(REPLACE(postcode, ' ', ''));

-- Step 3: Populate the "postcodes" table with unique cleaned postcodes (if they aren’t already present)
-- Insert cleaned up postcodes into the "postcodes" table
    INSERT INTO postcodes (postcode)
    SELECT DISTINCT postcode
    FROM suppliers
    WHERE postcode IS NOT NULL AND postcode NOT IN (SELECT postcode FROM postcodes);

    -- Alternative Step 3:
    -- This query will find all distinct postcodes in the suppliers table that do not already exist in the postcodes table
        SELECT DISTINCT s.postcode
        FROM suppliers s
        LEFT JOIN postcodes p
        ON s.postcode = p.postcode
        WHERE p.postcode IS NULL;

    -- Insert all postcodes from the "suppliers" table that are not yet in the "postcodes" table
        INSERT INTO postcodes (postcode)
        SELECT DISTINCT s.postcode
        FROM suppliers s
        LEFT JOIN postcodes p
        ON s.postcode = p.postcode
        WHERE p.postcode IS NULL;

-- Step 4: Add the "postcode_ID" column to the "suppliers" table
    ALTER TABLE suppliers ADD COLUMN postcode_ID INT;

-- Step 5: Populate the "postcode_ID" column in the "suppliers" table
    UPDATE suppliers s
    SET postcode_ID = p.id
    FROM postcodes p
    WHERE s.postcode = p.postcode;

-- Step 6: Create a new foreign key constraint
-- Add the foreign key constraint linking "suppliers" to "postcodes"
    ALTER TABLE suppliers
    ADD CONSTRAINT fk_postcode_ID
    FOREIGN KEY (postcode_ID) REFERENCES postcodes(id)
    ON DELETE CASCADE;  -- This will delete suppliers if the corresponding postcode is deleted (optional)

-- Step 7: Optionally remove the original "postcode" column from the "suppliers" table
-- If you no longer need the "postcode" column, you can drop it
    ALTER TABLE suppliers DROP COLUMN postcode;

-- Wat als entries in SUPPLIERS geen postcode hebben? Negeren? Is er een safeguard nodig?



ALTER TABLE mhl_contacts ADD FOREIGN KEY (department) REFERENCES mhl_departments(id) ON DELETE RESTRICT ON UPDATE CASCADE;

SELECT 
FROM mhl_contacts 
WHERE mhl_contacts.supplier_ID NOT IN (SELECT id FROM mhl_suppliers) 
OR mhl_contacts.supplier_ID IS NULL;

INSERT INTO mhl_suppliers (id)
VALUE (0);

UPDATE mhl_contacts
SET supplier_ID='9620'
WHERE mhl_contacts.supplier_ID NOT IN (SELECT id FROM mhl_suppliers)
OR mhl_contacts.supplier_ID IS NULL;

ALTER TABLE mhl_contacts ADD FOREIGN KEY (supplier_ID) REFERENCES mhl_suppliers(id) ON DELETE CASCADE ON UPDATE CASCADE;