SELECT object.MEDIUM, country.COUNTRY
FROM
    object NATURAL JOIN country_object NATURAL JOIN	country
GROUP BY country.countryid
ORDER BY COUNT(0) DESC
LIMIT 10