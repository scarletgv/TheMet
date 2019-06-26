SELECT 
    object.OBJECTNAME, image_object.PRIMARYIMAGE
FROM
    object
        NATURAL JOIN
    image_object
        NATURAL JOIN
    artist_object
        NATURAL JOIN
    artist
WHERE
    artist.ARTISTID = 14677