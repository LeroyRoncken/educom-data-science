  SELECT name, straat, huisnr, postcode, lat, lng
    FROM mhl_suppliers AS s
         INNER JOIN pc_lat_long AS geo ON s.postcode_ID = geo.id
ORDER BY lat DESC
   LIMIT 5;