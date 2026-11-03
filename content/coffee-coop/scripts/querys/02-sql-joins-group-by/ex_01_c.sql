-- exercise 1 - c
-- buy.deliveries, farm.farms, buy.collection_points: delivery_id, farm_name, point_name, gross_weight_kg, deliveries of 2026-09-30 and order by point and weight
SELECT
    T1.delivery_id as delivery,
    T2.farm_name as farm,
    T3.point_name as collection_name,
    T1.gross_weight_kg
   
FROM
    buy.deliveries T1
    INNER JOIN farm.farms T2
    ON T1.farm_id=T2.farm_id
    INNER JOIN buy.collection_points T3
    ON T1.collection_point_id=T3.collection_point_id
WHERE
    T1.delivery_id LIKE 'DLV-20260930-%'
   
ORDER by
    T3.point_name , T1.gross_weight_kg DESC
  
LIMIT
    10;

/*
     delivery       |     farm      |       collection_name       | gross_weight_kg
---------------------+---------------+-----------------------------+-----------------
 DLV-20260930-000164 | La Divisa     | Punto de Compra AbriaquÝ 1  |           48.18
 DLV-20260930-000028 | El Refugio    | Punto de Compra Acevedo 1   |          258.00
 DLV-20260930-000094 | El Refugio    | Punto de Compra Acevedo 1   |          246.96
 DLV-20260930-000292 | La Florida    | Punto de Compra Acevedo 1   |          122.13
 DLV-20260930-000202 | Los Guaduales | Punto de Compra Agrado 1    |          246.62
 DLV-20260930-000080 | El Arrayßn    | Punto de Compra Agrado 1    |          120.11
 DLV-20260930-000075 | La Primavera  | Punto de Compra Alcalß 1    |           61.99
 DLV-20260930-000137 | San Rafael    | Punto de Compra Aldana 1    |          209.02
 DLV-20260930-000130 | El Refugio    | Punto de Compra Algeciras 1 |          290.55
 DLV-20260930-000246 | Los Alpes     | Punto de Compra Algeciras 1 |          247.42
(10 filas)