# JOIN

`JOIN` es una operación que hace coincidir los registros de una
tabla con los registros de otra, a partir de uno o más campos, de
manera que las columnas puedan ser colocadas lado a lado en el
resultado de la consulta, simulando que vienen de una sola tabla.

>La operación `JOIN` realiza una unión de tablas por medio de
columnas en común.

Si solo se utiliza la palabra reservada `JOIN`, obtendremos los
registros que coinciden entre las tablas.   
Con el uso de la palabra
reservada `ON` especificamos cuales son los campos de cada
tabla que deben coincidir.
```sql
SELECT column_name(s)
FROM table1
JOIN table2
ON table1.column_name = table2.column_name;
```
# Tipos de JOINs

![joins-type](https://estradawebgroup.com/ImagesUpload/sql-joins.jpg)

## INNER JOIN

Selecciona registros que tienen valores coincidentes en ambas tablas.
```sql
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
```
## LEFT JOIN

Devuelve todos los registros de la tabla de la izquierda (tabla1) y los registros coincidentes de la tabla de la derecha (tabla2). 
```sql
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
```
> El resultado es 0 registros del lado derecho, si no hay coincidencia.

## RIGHT JOIN

Devuelve todos los registros de la tabla de la derecha (tabla1) y los registros coincidentes de la tabla de la izquierda (tabla2). 
```sql
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
```
> El resultado es 0 registros del lado izquierdo, si no hay coincidencia.

## FULL OUTER JOIN

Devuelve todos los registros cuando hay una coincidencia en los registros de la tabla izquierda (tabla1) o derecha (tabla2).
```sql
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
```
> Se puede utilizar `FULL JOIN` o `FULL OUTER JOIN` indiferentemente.