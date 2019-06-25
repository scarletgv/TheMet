#Ordena os departamentos pela quantidade de ojetos de ouro
SELECT 
    department, COUNT(*) AS numero_de_objetos_de_ouro
FROM
    department
        NATURAL JOIN
    (SELECT 
        objectid, departmentid
    FROM
        object
    WHERE
        object.medium = 'Gold') AS objetos_de_ouro
GROUP BY department
ORDER BY numero_de_objetos_de_ouro DESC
