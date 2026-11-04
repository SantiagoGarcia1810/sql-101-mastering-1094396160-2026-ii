-- exercise 2 - b
-- farm.farmers, farm.farms: same as literal a, only farmers of Pamplona without any farm
SELECT
    T1.document_number as document,
    T1.first_name,
    T1.last_name,
    T2.farm_name as farm
FROM
    farm.farmers T1
    LEFT JOIN farm.farms T2
    ON T1.farmer_id=T2.farmer_id 
WHERE
    T1.municipality_code='54518' and T2.farm_id=NULL
LIMIT
    10;

/*
 document | first_name | last_name | farm
----------+------------+-----------+------
(0 filas)