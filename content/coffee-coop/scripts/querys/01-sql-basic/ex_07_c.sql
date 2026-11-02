-- exercise 7 - c
-- farm.farms: all columns, farms from Pamplona without latitude or longitude

SELECT
    T1.*
FROM 
    farm.farms AS T1
WHERE 
    T1.municipality_code = '54518'
    AND (T1.latitude IS NULL OR T1.longitude IS NULL)
LIMIT
    10;
/*
  farm_id | farmer_id | municipality_code |   farm_name   |   rural_district   | total_area_ha | altitude_masl | latitude | longitude |    registered_at 
---------+-----------+-------------------+---------------+--------------------+---------------+---------------+----------+-----------+---------------------
    3904 |      2501 | 54518             | El Recuerdo   | Alto Grande        |          1.47 |          1875 |          |           | 2017-11-29 08:20:29
    4243 |      2716 | 54518             | La Esperanza  | El Palchal         |          1.64 |          1345 |          |           | 2021-02-08 17:28:44
    7001 |      4481 | 54518             | Las Delicias  | Caima              |          1.01 |          1308 |          |           | 2018-11-22 14:58:23
    8213 |      5280 | 54518             | Los Arrayanes | Cabecera Municipal |          3.66 |          1452 |          |           | 2017-12-03 11:26:22
    9863 |      6320 | 54518             | El Brillante  | Pe±as              |          2.06 |          1274 |          |           | 2020-11-15 09:28:06
   11687 |      7509 | 54518             | El Porvenir   | Fontib¾n           |          4.75 |          1418 |          |           | 2014-03-09 09:33:03
   12284 |      7898 | 54518             | La Florida    | Pe±as              |          1.16 |          1657 |          |           | 2021-01-29 09:33:26
   13216 |      8485 | 54518             | Los Arrayanes | Navarro            |          1.42 |          1101 |          |           | 2021-09-28 09:53:11
   15110 |      9714 | 54518             | El Guayabo    | San Francisco      |          3.20 |          1718 |          |           | 2012-07-21 11:24:18
   17013 |     10921 | 54518             | El Encanto    | Fontib¾n           |          0.75 |          1639 |          |           | 2019-06-09 07:43:23
(10 filas)
