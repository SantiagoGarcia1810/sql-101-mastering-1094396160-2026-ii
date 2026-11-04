-- exercise 3 - a
-- buy.deliveries, buy.collection_points: point_name, delivery_id, gross_weight_kg, all points with their deliveries of 2026-09-30
SELECT
    T2.point_name as collection_point,
    T1.delivery_id as deliviry,
    T1.gross_weight_kg
    
FROM
    buy.deliveries T1
    RIGHT JOIN buy.collection_points T2
    ON T1.collection_point_id=T2.collection_point_id
    AND T1.delivery_id LIKE 'DLV-20260930-%'
LIMIT
    17;

/*     collection_point         |      deliviry       | gross_weight_kg
---------------------------------+---------------------+-----------------
 Punto de Compra LÝbano 1          | DLV-20260930-000294 |  92.61
 Punto de Compra Sopetrßn 1        | DLV-20260930-000295 |  61.82
 Punto de Compra Pradera 1         | DLV-20260930-000296 |  271.91
 Punto de Compra San Francisco 1   | DLV-20260930-000297 |  98.35
 Punto de Compra CajibÝo 2         | DLV-20260930-000298 |  124.92
 Punto de Compra Valdivia 1        | DLV-20260930-000299 |  97.03
 Punto de Compra Riosucio 1        | DLV-20260930-000300 |  130.74
 Punto de Compra Tesalia 3                    |                     |
 Punto de Compra Marulanda 1                  |                     |
 Punto de Compra Gußtica 2                    |                     |
 Punto de Compra Chinßcota 1                  |                     |
 Punto de Compra El Tambo 2                   |                     |
 Punto de Compra La Argentina 1               |                     |
 Punto de Compra Hobo 1                       |                     |
 Punto de Compra Caldono 1                    |                     |
 Punto de Compra Yaguarß 1                    |                     |
 Punto de Compra Icononzo 1                   |         
 (17 filas)