SELECT SUBSTRING(object.OBJECTDATE, 1, 4) AS Ano, COUNT(0) AS Objetos #length(object.OBJECTDATE) = 4 pode usar isso também
	FROM object
		WHERE object.OBJECTDATE > 1800 AND object.OBJECTDATE <= 1901 
GROUP BY Ano
ORDER BY Ano