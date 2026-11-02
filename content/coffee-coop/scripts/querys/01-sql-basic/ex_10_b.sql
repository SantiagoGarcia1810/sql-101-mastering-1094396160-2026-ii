-- exercise 10 - b
-- pay.settlements: settlement_id, delivery_id, net_amount, status, pending settlements of 2026-09-30 and order by net amount

SELECT
    T1.settlement_id AS settlement,
    T1.delivery_id AS delivery,
    T1.net_amount AS net_cop,
    T1.status AS status
FROM
     pay.settlements AS T1
WHERE 
    T1.settled_at >= '2026-09-30'
    AND T1.settled_at < '2026-10-01'
    AND T1.status = 'pending'
ORDER BY
     T1.net_amount DESC
LIMIT
    10;
/*
      settlement      |      delivery       |  net_cop   | status
---------------------+---------------------+------------+---------
 STL-20260930-000062 | DLV-20260929-000235 | 6171557.18 | pending
 STL-20260930-000013 | DLV-20260928-000004 | 5087855.55 | pending
 STL-20260930-000069 | DLV-20260930-000204 | 5013706.66 | pending
 STL-20260930-000021 | DLV-20260928-000105 | 4912541.01 | pending
 STL-20260930-000011 | DLV-20260927-000088 | 4834069.24 | pending
 STL-20260930-000018 | DLV-20260927-000097 | 4682246.40 | pending
 STL-20260930-000007 | DLV-20260927-000177 | 4569033.82 | pending
 STL-20260930-000068 | DLV-20260928-000311 | 4341052.80 | pending
 STL-20260930-000033 | DLV-20260929-000007 | 4073521.56 | pending
 STL-20260930-000016 | DLV-20260928-000207 | 3923051.27 | pending
(10 filas)