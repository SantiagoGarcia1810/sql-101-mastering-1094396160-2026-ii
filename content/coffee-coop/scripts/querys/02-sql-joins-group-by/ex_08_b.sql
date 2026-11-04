-- exercise 8 - b
-- buy.deliveries: coffee_type, deliveries count and total gross weight of 2026-09-30 and order by weight
SELECT
    T1.coffee_type,
    COUNT(*) as deliveries_count,
    SUM(T1.gross_weight_kg) AS total_gross_kg
    
FROM
    buy.deliveries T1
WHERE
    T1.delivery_id LIKE 'DLV-20260930-%'
GROUP BY 
    T1.coffee_type
ORDER BY
    total_gross_kg DESC;          
/*
   coffee_type  | deliveries_count | total_gross_kg
---------------+------------------+----------------
 dry_parchment |              278 |       48246.55
 cherry        |               10 |        2053.16
 wet_parchment |               12 |        1891.25
(3 filas)