#Seleciona as imagens dos objetos de origem brasileira

select primaryImage
from object natural join country_object natural join country
where countryid = 35 or countryid = 100