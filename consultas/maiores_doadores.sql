SELECT 
    donor.donor, COUNT(0) AS `numero_de_obras_doadas`
FROM
    donor
        NATURAL JOIN
    donor_object
GROUP BY donor.DONORID
ORDER BY COUNT(0) DESC