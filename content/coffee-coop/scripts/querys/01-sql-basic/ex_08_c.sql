-- exercise 8 - c
-- buy.deliveries: all columns, deliveries of 2026-09-30 of type wet_parchment or cherry and order by gross weight

SELECT
    T1.*
FROM 
    buy.deliveries AS T1
WHERE 
    T1.delivery_id LIKE 'DLV-20260930-%'
    AND T1.coffee_type IN ('wet_parchment', 'cherry')
ORDER BY 
    T1.gross_weight_kg DESC
LIMIT
    10;
/*
    delivery_id     | farm_id | collection_point_id |    delivered_at     |  coffee_type  | bag_count | gross_weight_kg |  status
---------------------+---------+---------------------+---------------------+---------------+-----------+-----------------+----------
 DLV-20260930-000081 |   19338 |                 117 | 2026-09-30 09:17:37 | cherry        |         9 |          475.13 | received
 DLV-20260930-000187 |  231839 |                 159 | 2026-09-30 12:47:52 | cherry        |         6 |          339.30 | received
 DLV-20260930-000105 |   13478 |                  37 | 2026-09-30 09:57:09 | wet_parchment |         5 |          277.63 | settled
 DLV-20260930-000028 |  182397 |                 133 | 2026-09-30 07:13:46 | wet_parchment |         4 |          258.00 | received
 DLV-20260930-000133 |   44726 |                  59 | 2026-09-30 10:51:03 | cherry        |         4 |          254.83 | received
 DLV-20260930-000094 |   99627 |                 133 | 2026-09-30 09:31:20 | cherry        |         4 |          246.96 | received
 DLV-20260930-000129 |   89312 |                  76 | 2026-09-30 10:44:39 | wet_parchment |         4 |          206.71 | received
 DLV-20260930-000161 |  101318 |                  24 | 2026-09-30 12:06:51 | wet_parchment |         4 |          197.04 | accepted
 DLV-20260930-000046 |   85553 |                 140 | 2026-09-30 07:30:47 | wet_parchment |         3 |          186.73 | accepted
 DLV-20260930-000248 |  215660 |                 166 | 2026-09-30 14:59:13 | cherry        |         3 |          159.89 | received
(10 filas)
