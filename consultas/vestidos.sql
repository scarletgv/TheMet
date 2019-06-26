SELECT object.OBJECTNAME as Nome, object.medium as Material, COUNTRY as País, OBJECTDATE as Data, primaryimage Imagem
	FROM 
		object NATURAL JOIN image_object NATURAL JOIN department NATURAL JOIN country NATURAL JOIN donor_object
WHERE department.DEPARTMENT = 'Costume Institute' AND country.countryID = 6 and objectname = 'Dress' AND medium = 'silk'
ORDER BY donor_object.YEAR DESC
LIMIT 5