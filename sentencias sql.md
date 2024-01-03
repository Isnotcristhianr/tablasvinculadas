ordena descendente con pares repetidos:

SELECT e.est_nombre, e.est_nota,
RANK() OVER( ORDER BY E.est_nota DESC) AS row_num
FROM `tbl_estudiantes` as e

variables_
RANK(): 
DENSE_RANK(): asigno posicion, las posiciones tienen la misma posicion
ROW_NUMBER: