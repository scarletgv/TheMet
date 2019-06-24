SELECT 
    *,
    object.objectname AS 'Tipo de Objeto',
    COUNT(0) AS `Número de objetos desse tipo`
FROM
    object
        NATURAL JOIN
    (SELECT 
        objectid
    FROM
        country_object
    NATURAL JOIN country
    where country.country="Brazil") as objetos_brasileiros
GROUP BY object.objectname
ORDER BY COUNT(0) DESC