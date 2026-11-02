-- exercise 9 - c
-- buy.quality_analyses: all columns, not accepted analyses of 2026-09-30 with observations and order by defects

SELECT
    T1.*
FROM
     buy.quality_analyses AS T1
WHERE 
    T1.analyzed_at >= '2026-09-30'
    AND T1.analyzed_at < '2026-10-01'
    AND T1.is_accepted = FALSE
    AND T1.observations IS NOT NULL
ORDER BY 
    T1.defects_pct DESC
LIMIT
    10;
/*
     analysis_id     |     delivery_id     |     analyzed_at     | moisture_pct | yield_factor | defects_pct | cup_score | is_accepted |    analyst_name    |                observations
--------------------+---------------------+---------------------+--------------+--------------+-------------+-----------+-------------+--------------------+---------------------------------------------
 QA-20260930-000104 | DLV-20260930-000214 | 2026-09-30 15:55:59 |        17.68 |        97.46 |       19.54 |     82.59 | f           | Carolina RodrÝguez | Olor a fermento en la muestra.
 QA-20260930-000068 | DLV-20260930-000165 | 2026-09-30 13:10:38 |        16.13 |       100.22 |       17.29 |           | f           | Germßn Pe±a        | Muestra tomada por duplicado.
 QA-20260930-000119 | DLV-20260930-000253 | 2026-09-30 17:15:04 |         8.39 |       106.52 |       15.59 |     84.33 | f           | AnÝbal Pab¾n       | Exceso de impurezas y pasilla.
 QA-20260930-000086 | DLV-20260930-000147 | 2026-09-30 14:23:08 |        15.20 |        96.57 |       13.21 |           | f           | Erika Restrepo     | Olor a fermento en la muestra.
 QA-20260930-000113 | DLV-20260930-000223 | 2026-09-30 16:49:06 |         9.57 |        99.70 |       12.94 |     85.05 | f           | Reinaldo Berm·dez  | CafÚ sobresecado, grano quebradizo.
 QA-20260930-000022 | DLV-20260930-000070 | 2026-09-30 10:11:52 |        12.95 |       103.55 |        9.75 |           | f           | Santiago Rojas     | CafÚ con humedad alta, requiere mßs secado.
 QA-20260930-000018 | DLV-20260930-000006 | 2026-09-30 09:53:20 |        17.24 |       103.31 |        7.88 |     79.98 | f           | Nicolßs Serrano    | CafÚ con humedad alta, requiere mßs secado.
(7 filas)