Voordat we gaan bekijken hoe een relationele database met behulp van SQL te ondervragen, is het handig om eerst een beeld te krijgen wat een relationele database is hoe deze tot stand komt.

Hiervoor gaan we een 6-tal opdrachten doen:

* Aan hand van de module 'Gegevens Analyse' gaan je de eerste opdracht [#2] maken: het samenstellen van een ERD op basis van een beschrijving van een gewenst informatiesysteem. Je leert in-a-nutshell hoe je een gegevensverzameling kunt modelleren en hoe de relaties te duiden en vast te leggen in schema's.

* In opdracht 2 [#3] gaan we kijken of je van een bestaande complexe database een compleet ERD kan maken.
* In opdracht 3 [#4] kijken we naar eenvoudige SELECT met daarnaast filtering (WHERE) en sorteren (ORDER BY).
* In opdracht 4 [#5] kijken we naar SELECT uit meerdere tabellen met verschillende soorten JOINS zonder en met NULL waarden
* In opdracht 5 [#6] kijken we naar tellen, rekenen, groeperen (GROUP BY), IF-CASE en VIEWs
* In opdracht 6 [#7] tenslotte hebben we INNER SELECTs, sub-queries en datum- en string manipulatie

Optioneel kan je daarna nog een verdieping in SQL [#8] doen met o.a. stored procerudals etc.


### Opdracht 1
```mermaid
erDiagram
    LEVERANCIER {
        int id
        string naam
        string huisnummer
        char(6) postcode
        char(6) postbus_nummer
        char(6) postbus_postcode
        string email
        string mobiel_nummer
        string vast_nummer
    }

    EIGENSCHAP {
        int id
        string naam
        char type
    }
    EIGENSCHAP_A {
        int leverancier_id
        int eigenschap_id
        string waarde
    }
    EIGENSCHAP_B {
        int leverancier_id
        int eigenschap_id
        boolean waarde
    }
    EIGENSCHAP_C {
        int leverancier_id
        int eigenschap_id
        text waarde
    }

    HOOFDRUBRIEK {
        int id
        int leverancier_id
    }
    SUBRUBRIEK {
        int id
        int hoofdrubriek_id
        string naam
    }

    WERKZAAM {
        int contactpersoon_id
        int leverancier_id
        int afdeling_id
        int taak_id
    }
    CONTACTPERSOON {
        int id
        string naam
        string email
        string telefoonnummer
    }
    AFDELING {
        int id
        string naam
    }
    TAAK {
        int id
        string naam
    }

    POSTCODE {
        char(6) postcode
        decimal latitude
        decimal longitude
        int straatnaam_id
    }
    STRAATNAAM {
        int id
        string woonplaats_id
        string naam
    }
    WOONPLAATS {
        int id
        string gemeente_id
        string naam
    }
    GEMEENTE {
        int id
        string provincie_id
        string naam
    }
    PROVINCIE {
        int id
        string land_id
        string naam
    }
    LAND {
        int id
        string naam
    }

    LEVERANCIER ||..|| POSTCODE : ""
    LEVERANCIER ||..|{ HOOFDRUBRIEK : ""
    HOOFDRUBRIEK ||..|{ SUBRUBRIEK : ""

    EIGENSCHAP_A }|..|| EIGENSCHAP : ""
    EIGENSCHAP_B }|..|| EIGENSCHAP : ""
    EIGENSCHAP_C }|..|| EIGENSCHAP : ""
    LEVERANCIER ||..|{ EIGENSCHAP_A : ""
    LEVERANCIER ||..|{ EIGENSCHAP_B : ""
    LEVERANCIER ||..|{ EIGENSCHAP_C : ""

    LEVERANCIER ||..|{ WERKZAAM : ""
    WERKZAAM }|..|| TAAK : ""
    WERKZAAM }|..|| AFDELING : ""
    CONTACTPERSOON ||..|{ WERKZAAM : ""

    POSTCODE }|..|| STRAATNAAM : ""
    PROVINCIE }|..|| LAND : ""
    GEMEENTE }|..|| PROVINCIE : ""
    WOONPLAATS }|..|| GEMEENTE : ""
    STRAATNAAM }|..|| WOONPLAATS : ""
```
