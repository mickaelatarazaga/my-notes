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
SELECT sigla.nombre_columna1, sigla.nombre_columna2,...
FROM nombre_tabla sigla
INNER JOIN nombre_tabla_a_unir sigla ON sigla_tabla_1.columna_a_comparar = sigla_tabla_a_unir.columna_a_comparar;
```
