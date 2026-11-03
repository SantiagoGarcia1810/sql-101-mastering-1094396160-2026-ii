-- exercise 1 - b
-- farm.farms, geo.municipalities, farm.farmers: farm_name, rural_district, municipality_name, first_name, last_name, farms of Pamplona and order by farmer last name

SELECT
    T1.farm_name as farm, 
    T1.rural_district,
    T2.municipality_name as municipality,
    T3.first_name as name,
    T3.last_name
FROM
    farm.farms T1
    INNER JOIN geo.municipalities T2
    ON T1.municipality_code=T2.municipality_code
    INNER JOIN farm.farmers T3
    ON T1.farmer_id=T3.farmer_id
WHERE
    T2.municipality_code='54518'
ORDER by
    T3.last_name
LIMIT
    10;

/*
   farm     | rural_district | municipality |      name      |     last_name
-------------+----------------+--------------+----------------+--------------------
 El JardÝn   | El Escorial    | Pamplona     | Manuel         | Agudelo JimÚnez
 La Selva    | Pe±as          | Pamplona     | Manuel         | Agudelo JimÚnez
 El Diamante | El Alizal      | Pamplona     | Marleny        | Agudelo Sandoval
 Bellavista  | Alto Grande    | Pamplona     | RocÝo          | ┴lvarez Cßrdenas
 El Encanto  | Fontib¾n       | Pamplona     | RocÝo          | ┴lvarez Cßrdenas
 Monteverde  | Lengua         | Pamplona     | M¾nica         | ┴lvarez Carrillo
 La Caba±a   | Lengua         | Pamplona     | M¾nica         | ┴lvarez Carrillo
 El Arrayßn  | Navarro        | Pamplona     | Marleny        | ┴lvarez Correa
 El Mango    | La Legua       | Pamplona     | Alberto        | ┴lvarez Villamizar
 Monteverde  | La Legua       | Pamplona     | Myriam Yuliana | Arango Narvßez
(10 filas)