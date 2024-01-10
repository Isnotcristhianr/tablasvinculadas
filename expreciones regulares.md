# expresiones regulares

## regext
### busca del 0 al 9
~~~
SELECT * FROM `tbl_categorias`
WHERE CAT_NOMBRE REGEXP '[0-9]';
~~~

### busca letras
~~~
SELECT * FROM `tbl_categorias`
WHERE CAT_NOMBRE REGEXP '[a-z]';
~~~

## like
~~~
SELECT * FROM `tbl_categorias` WHERE CAT_NOMBRE LIKE '%lac%';
~~~

## 