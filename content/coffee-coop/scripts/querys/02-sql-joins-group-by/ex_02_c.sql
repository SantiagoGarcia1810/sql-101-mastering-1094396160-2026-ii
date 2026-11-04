-- exercise 2 - c
-- buy.deliveries, buy.quality_analyses: delivery_id, analysis_id, cup_score, deliveries of 2026-09-30 including those without analysis and order by delivery
SELECT
    T1.delivery_id as deliviry,
    T2.analysis_id as analysis,
    T2.cup_score
FROM
    buy.deliveries T1
    LEFT JOIN buy.quality_analyses T2
    ON T1.delivery_id=T2.delivery_id 
WHERE
    T1.delivery_id LIKE 'DLV-20260930-%'
ORDER by
    T1.delivery_id
LIMIT
    10;

/*
     deliviry       |      analysis      | cup_score
---------------------+--------------------+-----------
 DLV-20260930-000001 |                    |
 DLV-20260930-000002 |                    |
 DLV-20260930-000003 | QA-20260930-000001 |
 DLV-20260930-000004 | QA-20260930-000002 |
 DLV-20260930-000005 | QA-20260930-000026 |     78.56
 DLV-20260930-000006 | QA-20260930-000018 |     79.98
 DLV-20260930-000007 |                    |
 DLV-20260930-000008 | QA-20260930-000007 |
 DLV-20260930-000009 |                    |
 DLV-20260930-000010 | QA-20260930-000006 |
(10 filas)