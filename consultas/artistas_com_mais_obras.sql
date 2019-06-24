SELECT 
    Name, COUNT(0) AS `Numero_de_obras`
FROM
    artist
        NATURAL JOIN
    artist_object
GROUP BY artistid
ORDER BY COUNT(0) DESC