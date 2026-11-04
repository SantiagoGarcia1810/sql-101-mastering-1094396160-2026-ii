-- exercise 8 - a
-- geo.departments, geo.municipalities: department_name, municipalities count and order by count
SELECT
    T1.department_name as department,
    COUNT(T2.municipality_code) as municipalities_count
FROM
    geo.departments T1
    INNER JOIN geo.municipalities T2
    ON T1.department_code=T2.department_code   
GROUP BY 
    T1.department_name,T1.department_code
ORDER BY
    municipalities_count DESC
LIMIT
    15;          
/*
     department     | municipalities_count
--------------------+----------------------
 Antioquia          |                  125
 Boyacß             |                  123
 Cundinamarca       |                  116
 Santander          |                   87
 Nari±o             |                   64
 Tolima             |                   47
 BolÝvar            |                   46
 Cauca              |                   42
 Valle Del Cauca    |                   42
 Norte De Santander |                   40
 Huila              |                   37
 Choc¾              |                   30
 C¾rdoba            |                   30
 Magdalena          |                   30
 Meta               |                   29
(15 filas)
