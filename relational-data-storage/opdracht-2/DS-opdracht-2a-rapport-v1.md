### Problemen met de dataset

* Inconsistent gebruik van Engels en Nederlands
* Inconsistent gebruik van hoofdletters
* IDs worden niet altijd duidelijk benoemd
* IDs missen
* Tabellen missen
* Verkeerde datatypes
* Onduidelijke velden
* Overbodige tabellen
* Verkeerde karaktersymbolen (bijv. \&euml; i.p.v. ë)
* Landen foutief toegevoegd aan DISTRICTS
* Velden die foutief leeg of 0 kunnen zijn (zie vooral SUPPLIERS)
* Verkeerde primary en foreign keys


### Stappen om data integriteit te verbeteren

* Vertaal Nederlandse tabel- en veldnamen naar Engels

* Verduidelijk benaming van IDs
    * department -> department_ID (CONTACTS)
    * membertype -> membertype_ID (SUPPLIERS)
    * company -> company_ID (SUPPLIERS)
    * group_ID -> detailgroup_ID (DETAILDEFS)

* Voeg missende IDs toe
    * lat_long_ID (SUPPLIERS)
    * suppliers_ID (MEMBERTYPES) -> verwijder "membertype" uit SUPPLIERS
    * ID-colom in HITCOUNT

* Voeg missende tabellen toe en verbind deze
    * display_order (RUBRIEKEN, DISTRICTS, COUNTRIES, PROTOTYPES, DETAILDEFS)
    * sort_order (MEMBERTYPES)
    * Verbind BRANDS
    * Voeg tabel toe in plaats van het "properties" veld in DETAILDEFS: DETAILDEFS ||--|{ PROPERTY_DETAILS }|-|| PROPERTIES

* Verbeter datatypes
    * (RUBRIEKEN) name: char->varchar
    * (HITCOUNT) year: smallint(4); month: smallint(2)
    * (DETAILDEFS) property_DEF: varchar?
    * (MEMBERTYPES) name -> meer karakters -> zie "ABONNEE-Hoofdvestigi"

* Verbeter of verwijder onduidelijke velden
    * parent (RUBRIEKEN)
    * csvreg (PROPERTYTYPES)
    * display_order (RUBRIEKEN, DISTRICTS, COUNTRIES, PROTOTYPES, DETAILDEFS)
    * properties (DETAILDEFS)
    * pc6 (LAT_LONG) -> "postcode" -> vervang postcode en p_postcode in (SUPPLIERS) door een id uit LAT_LONG

* Verwijder overbodige tabellen
    * YN_PROPERTIES -> verplaats en hernoem "content"-veld naar PROPERTIES

* Verwijder foutieve entries
    * Landen in DISTRICTS

* Maak de nodige velden verplicht (zoals straatnaam en huisnummer?)

* Pas verkeerde primary en foreign keys aan en verwijder de overbodige
    * HITCOUNT -> te veel primary keys
    * LAT_LONG -> verkeerde foreign key, deze moet verplaatst worden naar SUPPLIERS