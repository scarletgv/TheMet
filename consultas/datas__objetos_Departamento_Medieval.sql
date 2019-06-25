#Seleciona as datas dos objetos do departamento "Medieval Art"
#As datas estão muito "sujas", acho que não vai ser legal esse

SELECT 
    objectdate
FROM
    object
        NATURAL JOIN
    department
WHERE
    department LIKE 'Medieval Art'
GROUP BY objectdate