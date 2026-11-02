-- exercise 9 - b
-- buy.quality_analyses: analysis_id, delivery_id, moisture_pct, analyst_name, observations, analyses of 2026-09-30 with moisture out of 10-12

SELECT
    T1.analysis_id AS analysis,
    T1.delivery_id AS delivery,
    T1.moisture_pct AS moisture_pct,
    T1.analyst_name AS analyst_name,
    T1.observations AS observations
FROM 
    buy.quality_analyses AS T1
WHERE
    T1.analyzed_at >= '2026-09-30'
    AND T1.analyzed_at < '2026-10-01'
    AND T1.moisture_pct NOT BETWEEN 10 AND 12
LIMIT
    10;
/*
       analysis      |      delivery       | moisture_pct |   analyst_name    |                   observations
--------------------+---------------------+--------------+-------------------+--------------------------------------------------
 QA-20260930-000026 | DLV-20260930-000005 |        12.19 | Wilson Galvis     |
 QA-20260930-000018 | DLV-20260930-000006 |        17.24 | Nicolßs Serrano   | CafÚ con humedad alta, requiere mßs secado.
 QA-20260930-000017 | DLV-20260930-000012 |        12.15 | Natalia Trujillo  |
 QA-20260930-000033 | DLV-20260930-000027 |        12.41 | Sara Sßnchez      |
 QA-20260930-000013 | DLV-20260930-000038 |        12.28 | Adriana Losada    |
 QA-20260930-000005 | DLV-20260930-000040 |        12.22 | Ivßn Castro       |
 QA-20260930-000027 | DLV-20260930-000043 |        12.07 | Germßn Gonzßlez   | Caficultor solicita contramuestra.
 QA-20260930-000023 | DLV-20260930-000046 |        12.23 | Alejandra Torres  | CafÚ de buena presentaci¾n, sin olores extra±os.
 QA-20260930-000012 | DLV-20260930-000057 |        12.16 | Guillermo Acevedo |
 QA-20260930-000022 | DLV-20260930-000070 |        12.95 | Santiago Rojas    | CafÚ con humedad alta, requiere mßs secado.
(10 filas)