-- exercise 8 - c
-- buy.deliveries, buy.collection_points: point_name, deliveries count, total and average gross weight of 2026-09-30
SELECT  
    T1.point_name AS collection_point_id,
    COUNT(*) AS deliveries_count,
    SUM(T2.gross_weight_kg) AS total_gross_kg,
    ROUND(AVG(T2.gross_weight_kg),2) AS avg_gross_kg

FROM
    buy.collection_points T1
    INNER JOIN buy.deliveries T2
    ON T1.collection_point_id=T2.collection_point_id 
WHERE
    T2.delivery_id LIKE 'DLV-20260930-%'
GROUP BY 
    T1.collection_point_id, T1.point_name
LIMIT
    10;

/*
     collection_point_id     | deliveries_count | total_gross_kg | avg_gross_kg
-----------------------------+------------------+----------------+--------------
 Punto de Compra AbriaquÝ 1  |                1 |          48.18 |        48.18
 Punto de Compra Acevedo 1   |                3 |         627.09 |       209.03
 Punto de Compra Agrado 1    |                2 |         366.73 |       183.37
 Punto de Compra Alcalß 1    |                1 |          61.99 |        61.99
 Punto de Compra Aldana 1    |                1 |         209.02 |       209.02
 Punto de Compra Algeciras 1 |                5 |        1093.81 |       218.76
 Punto de Compra Altamira 1  |                2 |         284.88 |       142.44
 Punto de Compra AndalucÝa 2 |                2 |         471.26 |       235.63
 Punto de Compra Anserma 1   |                2 |         233.71 |       116.86
 Punto de Compra Anserma 2   |                2 |         209.24 |       104.62
(10 filas)