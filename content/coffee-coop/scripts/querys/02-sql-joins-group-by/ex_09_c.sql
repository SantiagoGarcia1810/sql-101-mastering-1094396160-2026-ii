-- exercise 9 - c
-- buy.quality_analyses, buy.deliveries, farm.farms: farms with at least 3 analyses and average cup score >= 84 and order by average
SELECT
    T3.farm_name AS farm,
    COUNT(*) AS analyses_count,
    ROUND(AVG(T2.cup_score),2) AS avg_cup_score
FROM
     buy.deliveries T1
     INNER JOIN buy.quality_analyses T2
     ON T1.delivery_id=T2.delivery_id
     INNER JOIN farm.farms T3
     ON T1.farm_id=T3.farm_id
GROUP BY 
    T3.farm_name, T3.farm_id
HAVING
    COUNT(*)>= 3 
    AND AVG(T2.cup_score)>= 84
ORDER BY 
    avg_cup_score DESC
LIMIT
    10;

/*
     farm      | analyses_count | avg_cup_score
---------------+----------------+---------------
 El Porvenir   |              4 |         90.00
 El Triunfo    |              4 |         90.00
 El Recreo     |              3 |         90.00
 Las OrquÝdeas |              5 |         90.00
 La Loma       |              3 |         90.00
 La Argentina  |              4 |         90.00
 La Palma      |              5 |         90.00
 La Selva      |              4 |         90.00
 San Antonio   |              3 |         90.00
 La Victoria   |              6 |         90.00
(10 filas)


