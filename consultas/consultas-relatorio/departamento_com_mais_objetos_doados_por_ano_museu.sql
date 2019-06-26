SELECT Ano, MAX(Objetos) as TotObjetos, Departamento FROM 
(SELECT donor_object.YEAR AS Ano, COUNT(object.OBJECTID) as Objetos, department.DEPARTMENT as Departamento
	FROM object NATURAL JOIN donor_object NATURAL JOIN department
		WHERE 
			donor_object.YEAR > 1871 AND donor_object.YEAR < 2018
GROUP BY Departamento, donor_object.YEAR
ORDER BY donor_object.YEAR, Objetos) as DeptPorAno
GROUP BY Ano