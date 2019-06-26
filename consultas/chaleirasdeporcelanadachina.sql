SELECT 
    object.OBJECTNAME, object.medium, primaryimage
FROM
    object
        NATURAL JOIN
    image_object
        NATURAL JOIN
    country_object
        NATURAL JOIN
    country
WHERE
    countryid = 8
        AND object.medium = 'Porcelain'
        AND OBJECTNAME = 'Teapot'