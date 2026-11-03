-- exercise 1 - a
-- geo.municipalities, geo.departments: municipality_code, municipality_name, department_name, municipalities of N.S. and order by municipality

SELECT
    T1.municipality_code as code, 
    T1.municipality_name as municipality,
    T2.department_name as department
FROM
    geo.municipalities T1
    INNER JOIN geo.departments T2
    ON T1.department_code=T2.department_code
WHERE
    T1.department_code='54'
ORDER by
    T1.municipality_name
LIMIT
    10;

/*
 code  | municipality |     department
-------+--------------+--------------------
 54003 | ┴brego       | Norte De Santander
 54051 | Arboledas    | Norte De Santander
 54099 | Bochalema    | Norte De Santander
 54109 | Bucarasica   | Norte De Santander
 54128 | Cßchira      | Norte De Santander
 54125 | Cßcota       | Norte De Santander
 54172 | Chinßcota    | Norte De Santander
 54174 | Chitagß      | Norte De Santander
 54206 | Convenci¾n   | Norte De Santander
 54001 | C·cuta       | Norte De Santander
(10 filas)