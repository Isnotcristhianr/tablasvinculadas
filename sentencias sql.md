# Tablas Vinculadas SQL


## ordena descendente con pares repetidos:

~~~
SELECT e.est_nombre, e.est_nota,
RANK() OVER( ORDER BY E.est_nota DESC) AS row_num
FROM `tbl_estudiantes` as e
~~~


variables_
- RANK(): asigno posicion orden, pero si se repite repito la posicion anterior ejm: 1 2 2 4 5 5 7
- DENSE_RANK(): asigno posicion, las posiciones tienen la misma posicion ejm: 1 2 2 3 4 4 5
- ROW_NUMBER: asigno posicion a cada elemento ejm: 1 2 3 4 5 6 7

ORDEN EJECUCION SQL:
1. SELECT
2. FROM
3. WHERE
4. TABLAS VINCULADAS

## consultas con tablas temporales

~~~
WITH est_cte as(

    SELECT 
    e.est_nombre,
    e.est_nota,
    DENSE_RANK() OVER( ORDER BY E.est_nota DESC) AS row_num
    FROM `tbl_estudiantes` as e
    
 )
 SELECT * FROM est_cte WHERE row_num <= 3;

~~~

## PEOR NOTA

~~~
WITH est_cte as(

    SELECT 
    e.est_nombre,
    e.est_nota,
    ROW_NUMBER() OVER( ORDER BY E.est_nota ASC) AS PEOR
    FROM `tbl_estudiantes` as e
 )
 SELECT * FROM est_cte WHERE PEOR <= 3;
 ~~~

 ## PROMEDIO
 ~~~
 SELECT 
    AVG(e.est_nota) as PROM
    FROM tbl_estudiantes as e;
~~~

## MEJOR PROMEDIO CON TABLA TEMPORAL
~~~
WITH est_cte as(

    SELECT 
    e.est_nombre,
    e.est_nota,
    AVG(e.est_nota) OVER() as prom
    FROM `tbl_estudiantes` as e
    
 )
 SELECT * FROM est_cte WHERE est_nota > prom;
 ~~~

 ## reto
 ~~~
 WITH est_cte as(

    SELECT 
    e.est_nota,
    e.est_nota2,
    e.est_nota3
    AVG(e.est_nota+est_nota2+est_nota3) OVER() as prom,
   ROW_NUMBER() OVER( ORDER BY prom ASC) AS PEOR
    FROM `tbl_estudiantes` as e
    
 )
 SELECT * FROM est_cte WHERE  PEOR <= 3;
~~~

## solucion reto
~~~
WITH est_cte AS (
    SELECT 
        e.est_nota,
        e.est_nota2,
        e.est_nota3,
        (e.est_nota + e.est_nota2 + e.est_nota3) / 3.0 AS prom,
        ROW_NUMBER() OVER (ORDER BY PROM ASC) AS MEJOR
    FROM 
        `tbl_estudiantes` as e
)

SELECT * FROM est_cte WHERE MEJOR <= 3;
~~~