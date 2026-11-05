-- exercise 10 - c
-- geo.municipalities, farm.farms: farms count, total area and average altitude per municipality of N.S., only municipalities with at least 5 farms
SELECT
    T1.municipality_name AS municipality,
    COUNT(T2.farm_id) AS farms_count,
    SUM(T2.total_area_ha) AS total_area_ha,
    ROUND(AVG(T2.altitude_masl),2) AS avg_altitude_masl
FROM
    geo.municipalities T1
    INNER JOIN farm.farms T2
    ON T1.municipality_code=T2.municipality_code
WHERE
    T1.department_code='54'
GROUP BY
    T1.municipality_code, T1.municipality_name
HAVING
    COUNT(T2.farm_id)>=5
ORDER BY
    avg_altitude_masl DESC
LIMIT
    10;

/*
   municipality   | farms_count | total_area_ha | avg_altitude_masl
------------------+-------------+---------------+-------------------
 Ragonvalia       |         377 |        990.30 |           1688.35
 Cucutilla        |         315 |        806.32 |           1674.67
 Cßcota           |         345 |        950.47 |           1670.86
 Labateca         |         358 |       1103.31 |           1669.03
 ┴brego           |         330 |        900.02 |           1666.75
 Puerto Santander |         323 |        803.82 |           1666.08
 C·cuta           |         308 |        849.52 |           1657.92
 Santiago         |         356 |       1013.47 |           1654.08
 Pamplonita       |         326 |        901.48 |           1653.36
 Pamplona         |         368 |       1062.41 |           1652.74
(10 filas)


