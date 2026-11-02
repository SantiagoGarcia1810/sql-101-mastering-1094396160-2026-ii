-- exercise 10 - c
-- pay.settlements: settlement_id, net_weight_kg, price_per_kg_applied, gross_amount, check_gross_cop, settlements of 2026-09-30 without deductions

SELECT
    T1.settlement_id AS settlement,
    T1.net_weight_kg AS net_weight_kg,
    T1.price_per_kg_applied AS price_per_kg,
    T1.gross_amount AS gross_cop,
    T1.net_weight_kg * T1.price_per_kg_applied AS check_gross_cop
FROM 
    pay.settlements AS T1
WHERE 
    T1.settled_at >= '2026-09-30'
    AND T1.settled_at < '2026-10-01'
    AND T1.deductions_amount = 0
LIMIT
    10;
/*
     settlement      | net_weight_kg | price_per_kg | gross_cop  | check_gross_cop
---------------------+---------------+--------------+------------+-----------------
 STL-20260930-000011 |        211.64 |     22841.00 | 4834069.24 |    4834069.2400
 STL-20260930-000018 |        216.32 |     21645.00 | 4682246.40 |    4682246.4000
 STL-20260930-000035 |        237.30 |     22840.00 | 5419932.00 |    5419932.0000
 STL-20260930-000027 |        139.52 |     21607.00 | 3014608.64 |    3014608.6400
 STL-20260930-000030 |         39.43 |     23273.00 |  917654.39 |     917654.3900
 STL-20260930-000005 |        158.94 |     21608.00 | 3434375.52 |    3434375.5200
 STL-20260930-000042 |        300.18 |     23455.00 | 7040721.90 |    7040721.9000
 STL-20260930-000006 |        145.01 |     22847.00 | 3313043.47 |    3313043.4700
 STL-20260930-000019 |        134.15 |     22808.00 | 3059693.20 |    3059693.2000
 STL-20260930-000008 |        152.95 |     22477.00 | 3437857.15 |    3437857.1500
(10 filas)


### Why `check_gross_cop` matches `gross_amount`

Both columns use the same formula: net weight times price per kilogram.

`gross_amount` is a generated column. PostgreSQL calculates it by itself using
`net_weight_kg * price_per_kg_applied`, so nobody writes that value by hand.

In my query, `check_gross_cop` does the same multiplication. Same formula and
same data give the same result, so both columns are equal in every row.