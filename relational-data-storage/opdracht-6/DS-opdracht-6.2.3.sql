  SELECT DAYNAME(joindate) AS "Dagen van de week",
         COUNT(ID) AS "Aantal aanmeldingen"
    FROM mhl_suppliers
GROUP BY DAYNAME(joindate)
ORDER BY DAYOFWEEK(joindate)