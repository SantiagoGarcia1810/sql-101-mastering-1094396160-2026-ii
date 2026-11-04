-- exercise 9 - b
-- buy.deliveries, buy.collection_points: points with more than 1000 kg gross weight on 2026-09-30 and order by weight
SELECT
    T1.point_name AS collection_point,
     SUM(T2.gross_weight_kg) AS total_gross_kg
FROM 
    buy.collection_points T1
    INNER JOIN buy.deliveries T2
    ON T1.collection_point_id=T2.collection_point_id
WHERE
    T2.delivery_id LIKE 'DLV-20260930-%'
GROUP BY 
    T1.point_name,T1.collection_point_id
HAVING
    SUM(T2.gross_weight_kg)>1000
ORDER BY
    total_gross_kg DESC;

/*
            collection_point            | total_gross_kg
----------------------------------------+----------------
 Punto de Compra Algeciras 1            |        1093.81
 Punto de Compra Coromoro 1             |        1079.24
 Punto de Compra San AndrÚs De Tumaco 1 |        1014.27
(3 filas)


