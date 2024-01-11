# join

## left
~~~
SELECT 
    e.EMP_NOMBRE,
    SUM(v.VENT_PRECIO_VENDIDO) as valorTotal,
    ROW_NUMBER() OVER( ORDER BY SUM(v.VENT_PRECIO_VENDIDO) DESC) as contador
FROM tbl_empleados e 
LEFT JOIN tbl_ventas v on e.EMP_ID= v.EMP_ID
GROUP BY e.EMP_ID, e.EMP_NOMBRE;
~~~

## mejora left
~~~
WITH ventas AS (
    SELECT 
        e.EMP_NOMBRE AS nombre,
        SUM(v.VENT_PRECIO_VENDIDO) AS valorTotal,
        ROW_NUMBER() OVER (ORDER BY SUM(v.VENT_PRECIO_VENDIDO) DESC) AS contador
    FROM tbl_empleados e 
    LEFT JOIN tbl_ventas v ON e.EMP_ID = v.EMP_ID
    GROUP BY e.EMP_ID, e.EMP_NOMBRE  
)
SELECT nombre, valorTotal, contador
FROM ventas
WHERE contador < 5;
~~~