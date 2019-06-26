SELECT object.OBJECTNAME as Nome, object.medium as Material, primaryimage as Imagem
	FROM 
		object NATURAL JOIN image_object NATURAL JOIN country_object NATURAL JOIN country NATURAL JOIN donor_object 
WHERE countryid = 3 AND object.medium = 'Silver' #AND OBJECTNAME = 'Teapot'
order by donor_object.YEAR desc
LIMIT 5