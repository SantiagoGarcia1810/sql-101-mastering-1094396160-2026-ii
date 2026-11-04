-- exercise 3 - c
-- farm.plot_varieties, farm.coffee_varieties: variety_name, species, varieties not planted in any plot
SELECT
    T2.variety_name as variety,
    T2.species as species
FROM
    farm.plot_varieties T1
    RIGHT JOIN farm.coffee_varieties T2
    ON T1.variety_id=T2.variety_id
WHERE
    T2.variety_id IS NULL
ORDER BY 
    T2.species;
   
/*
 variety | species
---------+---------
(0 filas)