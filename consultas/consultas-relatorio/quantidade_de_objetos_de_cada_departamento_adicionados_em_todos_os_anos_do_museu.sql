SELECT donor_object.YEAR AS Ano, COUNT(object.DEPARTMENTID) as Objetos, department.DEPARTMENT as Departamento
	FROM object NATURAL JOIN donor_object NATURAL JOIN department
		WHERE 
			donor_object.YEAR > 1871 AND donor_object.YEAR < 2018
GROUP BY donor_object.YEAR, object.DEPARTMENTID
ORDER BY donor_object.YEAR