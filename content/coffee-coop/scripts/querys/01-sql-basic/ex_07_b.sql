-- exercise 7 - b
-- farm.farms: all columns, farms from Pamplona between 1600 and 1800 masl and order by rural district and area

SELECT
    T1.*
FROM 
    farm.farms AS T1
WHERE 
    T1.municipality_code = '54518'
    AND T1.altitude_masl BETWEEN 1600 AND 1800
ORDER BY 
    T1.rural_district , T1.total_area_ha DESC
LIMIT
    10;
/*
 farm_id | farmer_id | municipality_code |  farm_name   |   rural_district   | total_area_ha | altitude_masl | latitude | longitude  |    registered_at 
---------+-----------+-------------------+--------------+--------------------+---------------+---------------+----------+------------+---------------------
  123713 |     79656 | 54518             | Los Pinos    | Alcaparral         |          1.67 |          1771 |          |            | 2017-01-16 15:53:24
  135683 |     87442 | 54518             | Miraflores   | Alcaparral         |          1.29 |          1636 |          |            | 2021-12-26 07:45:34
  220768 |    142523 | 54518             | Monteverde   | Alto Grande        |          2.59 |          1794 | 8.270950 | -72.601354 | 2011-05-25 12:18:39
  106381 |     68437 | 54518             | La Loma      | Alto Grande        |          2.09 |          1667 | 7.760726 | -73.032128 | 2021-08-23 13:04:30
  162550 |    104763 | 54518             | Bellavista   | Alto Grande        |          1.80 |          1704 |          |            | 2017-01-20 07:52:05
  172543 |    111220 | 54518             | El Refugio   | Alto Grande        |          1.23 |          1661 | 7.945377 | -72.671696 | 1999-03-05 16:30:30
  210481 |    135840 | 54518             | El JardÝn    | Cabecera Municipal |          3.26 |          1620 | 8.219683 | -73.151808 | 2015-04-21 08:19:41
   95792 |     61650 | 54518             | El EdÚn      | Cabecera Municipal |          2.89 |          1603 |          |            | 2006-05-21 15:32:21
  204909 |    132229 | 54518             | La Milagrosa | Cabecera Municipal |          2.65 |          1643 | 7.673836 | -72.492972 | 2020-04-02 07:52:05
    5849 |      3739 | 54518             | La Divisa    | Cabecera Municipal |          1.32 |          1765 | 7.322561 | -72.767022 | 2006-05-26 14:29:53
(10 filas)
