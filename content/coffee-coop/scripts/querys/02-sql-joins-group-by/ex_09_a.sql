-- exercise 9 - a
-- geo.departments, geo.municipalities: departments with more than 40 municipalities and order by count

SELECT
    T1.department_name as department,
    COUNT(T2.municipality_code) as municipalities_count
FROM
    geo.departments T1
    INNER JOIN geo.municipalities T2
    ON T1.department_code=T2.department_code   
GROUP BY 
    T1.department_name,T1.department_code
HAVING
    COUNT(T2.municipality_code)> 40
ORDER BY
    municipalities_count DESC;

/*
    department    | municipalities_count
-----------------+----------------------
 Antioquia       |                  125
 Boyacß          |                  123
 Cundinamarca    |                  116
 Santander       |                   87
 Nari±o          |                   64
 Tolima          |                   47
 BolÝvar         |                   46
 Cauca           |                   42
 Valle Del Cauca |                   42
(9 filas)