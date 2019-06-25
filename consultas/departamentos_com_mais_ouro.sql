#Ordena os departamentos pela quantidade de ojetos de ouro
SELECT 
    department, count(*) as numero_de_objetos_de_ouro
FROM
    department
        NATURAL JOIN
    (select objectid, departmentid
    from object 
    where object.medium = "Gold") as objetos_de_ouro
GROUP BY department
order bY numero_de_objetos_de_ouro DESC
