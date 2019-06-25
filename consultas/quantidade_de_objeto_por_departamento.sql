# Orderna os departamentos pelo numero de objetos de cada um

SELECT 
    department, COUNT(*) AS numero_de_objetos
FROM
    object
        NATURAL JOIN
    department
GROUP BY department
ORDER BY numero_de_objetos DESC
