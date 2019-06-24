SELECT 
    country.Country, COUNT(0) AS `numero_de_obras`
FROM
    country
        NATURAL JOIN
    country_object
GROUP BY country.countryid
ORDER BY COUNT(0) DESC