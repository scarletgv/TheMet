#Seleciona as imagens dos objetos de origem brasileira

SELECT
    title, primaryImage
FROM
    object
            NATURAL JOIN
    image_object
            NATURAL JOIN
    country_object
            NATURAL JOIN
    country
WHERE
    country.countryid= 35 OR countryid=100
