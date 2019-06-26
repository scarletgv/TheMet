SELECT donor_object.YEAR AS Ano, COUNT(donor_object.OBJECTID) AS Doações
	FROM object NATURAL JOIN donor_object
		WHERE 
			donor_object.YEAR > 1871 AND donor_object.YEAR < 2018
GROUP BY donor_object.YEAR
ORDER BY donor_object.YEAR
