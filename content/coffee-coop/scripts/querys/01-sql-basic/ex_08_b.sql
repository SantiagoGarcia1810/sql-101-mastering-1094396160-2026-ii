-- exercise 8 - b
-- buy.deliveries: all columns and avg_kg_per_bag, rejected deliveries of 2026-09-30

SELECT
    T1.*,
    T1.gross_weight_kg / T1.bag_count AS avg_kg_per_bag
FROM 
    buy.deliveries AS T1
WHERE
     T1.delivery_id LIKE 'DLV-20260930-%'
    AND T1.status = 'rejected'
LIMIT
    10;
/*
    delivery_id     | farm_id | collection_point_id |    delivered_at     |  coffee_type  | bag_count | gross_weight_kg |  status  |   avg_kg_per_bag  
---------------------+---------+---------------------+---------------------+---------------+-----------+-----------------+----------+---------------------
 DLV-20260930-000253 |  143807 |                 102 | 2026-09-30 15:05:34 | dry_parchment |         5 |          253.15 | rejected | 50.6300000000000000
 DLV-20260930-000083 |   66435 |                   2 | 2026-09-30 09:20:30 | dry_parchment |         2 |           89.95 | rejected | 44.9750000000000000
 DLV-20260930-000109 |  216626 |                   6 | 2026-09-30 10:04:15 | dry_parchment |         5 |          311.88 | rejected | 62.3760000000000000
 DLV-20260930-000147 |   77310 |                 103 | 2026-09-30 11:17:45 | wet_parchment |         1 |           66.42 | rejected | 66.4200000000000000
 DLV-20260930-000006 |   58408 |                 170 | 2026-09-30 06:11:03 | dry_parchment |         3 |          139.81 | rejected | 46.6033333333333333
 DLV-20260930-000070 |   69157 |                   3 | 2026-09-30 08:19:57 | dry_parchment |         3 |          147.13 | rejected | 49.0433333333333333
 DLV-20260930-000165 |  107038 |                 162 | 2026-09-30 12:15:01 | dry_parchment |         6 |          348.59 | rejected | 58.0983333333333333
 DLV-20260930-000214 |  223116 |                  44 | 2026-09-30 13:53:56 | dry_parchment |         3 |          177.63 | rejected | 59.2100000000000000
 DLV-20260930-000223 |  216415 |                  45 | 2026-09-30 14:19:21 | dry_parchment |         7 |          338.32 | rejected | 48.3314285714285714
(9 filas)
