-- exercise 2 - a
-- farm.farmers, farm.farms: document_number, first_name, last_name, farm_name, farmers of Pamplona including those without farm
SELECT
    T1.document_number as document,
    T1.first_name,
    T1.last_name,
    T2.farm_name as farm
FROM
    farm.farmers T1
    LEFT JOIN farm.farms T2
    ON T1.farmer_id=T2.farmer_id 
WHERE
    T1.municipality_code='54518'
LIMIT
    10;

/*
  document  |   first_name    |    last_name     |     farm
------------+-----------------+------------------+---------------
 1061690671 | Guillermo Pedro | Arias RodrÝguez  | La Selva
 712758473  | Wilson          | L¾pez Villamizar | El Silencio
 134410171  | Orlando         | Salazar Berm·dez | El Diamante
 870240973  | Jairo           | Molina Pab¾n     | El Recuerdo
 727945493  | Gloria          | MarÝn Rivera     | La Esperanza
 549054771  | MarÝa           | Burbano Duarte   | El Nogal
 549054771  | MarÝa           | Burbano Duarte   | La Divisa
 622105662  | Alejandra       | Molina Torres    | La Carolina
 622105662  | Alejandra       | Molina Torres    | La Cristalina
 622105662  | Alejandra       | Molina Torres    | Villa Rosa
(10 filas)