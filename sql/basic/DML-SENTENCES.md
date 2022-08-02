# SELECT
Para **consultar los datos** de una tabla se utiliza la sentencia
SELECT.  
Con SELECT podemos obtener los datos de todos los campos de
la tabla, por ejemplo:

```sql
SELECT * FROM nombre_tabla
```

En algunos casos, **no es necesario o no interesan todas las
columnas** por una cuestión de visibilidad, para esos casos,
especificamos cuáles son las columnas que nos interesan. Por
ejemplo:

```sql
SELECT campo_1, campo_2 FROM nombre_tabla
```
Dentro de una tabla, una columna suele contener muchos valores duplicados y, a veces, solo desea enumerar los diferentes valores (distintos). Para eso existe `SELECT DISTINCT`.

```sql
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

# INSERT

La sentencia INSERT se utiliza para **insertar datos en una tabla**
creada (también se utiliza la frase “poblar una tabla con datos”).
Hay varias formas de usar esta sentencia.  
1. Especificando los campos en los que se quiere insertar datos y
su valor respectivo:

    ```sql
    INSERT INTO nombre_tabla (nombre_columna_1, nombre_columna_2,...) 
    VALUES(valor_col_1, valor_col_2, ...)
    ```

2. Omitir la especificación de los campos y escribir solamente los valores. Para estos casos, debemos indicar valores para todos los campos de la tabla, en el mismo orden de definición de la tabla.

    ```sql
    INSERT INTO nombre_tabla VALUES (valor_col_1, valor_col_2, ...)
    ```
3. Insertar registros a partir de otra tabla:

    ```sql
    INSERT INTO tabla2 (col_1, col_2, col_3)
    SELECT col_1_t1, col_2_t1, col_3_t1
    FROM tabla1
    WHERE condición;
    ```
    En este caso, también es posible especificar los campos en los que
    se quieren insertar datos, u omitir esa parte de la sentencia y
    especificar valores para todos los campos.

## ORDER BY
Se utiliza para clasificar el conjunto de resultados en orden ascendente o descendente.
```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```

# UPDATE
Para **modificar los datos** que tiene almacenados una tabla, utilizamos la sentencia UPDATE con la siguiente sintaxis:

```sql
UPDATE nombre_tabla
SET columna_1 = valor_nuevo1, columna_2 = valor_nuevo2
WHERE condicion;

```
La sentencia **WHERE** permite **filtrar los registros
según las condiciones indicadas**. Si al momento de hacer un UPDATE a la tabla, no especificamos ninguna condición en la sección del WHERE, la actualización de campos se realizará en todos los registros de la tabla.


# DELETE

La sentencia DELETE se usa cuando se desea **eliminar registros de una tabla** (solo elimina registros, **no sirve para eliminar la estructura de la tabla**. La sintaxis es la siguiente:

```sql
DELETE FROM nombre_tabla WHERE condiciones;
```

Al igual que el UPDATE, si no se incluyen condiciones de filtrado, la sentencia DELETE eliminará todos los registros de la tabla.

## Truncate

Se utiliza para eliminar los datos de una talba, sin borrar la tabla en sí.

```sql
TRUNCATE TABLE nombre_tabla;
```

# Cláusula WHERE

WHERE se utiliza para filtrar registros, extrayendo solo aquellos que cumplen una condición específica.
``` sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

### Operadores WHERE

| Operador|Descripción|	
|--|--|
| = |Equal|	
|>|	Greater than|	
|<|	Less than	|
|>=|	Greater than or equal	|
|<=|	Less than or equal	|
|<>|	Not equal. In some versions of SQL this operator may be written as !=|
|BETWEEN x AND y|	Between a certain range	|
|LIKE 'x %' |	Search for a pattern	|
|IN ('x', ..)|	To specify multiple possible values for a column|

## Operadores AND, OR, NOT
WHERE se puede combinar con los operadores AND, OR y NOT.

- **AND** muestra un registro si **todas** las condiciones separadas por AND son VERDADERAS.
    ```sql
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition1 AND condition2 AND condition3 ...;
    ```
- **OR** muestra un registro si **alguna** de las condiciones separadas por OR es VERDADERA.
    ```sql
    SELECT column1, column2, ...
    FROM table_name
    WHERE condition1 OR condition2 OR condition3 ...;
    ```
- **NOT** muestra un registro **si la(s) condición(es) NO ES VERDADERA**.
    ```sql
    SELECT column1, column2, ...
    FROM table_name
    WHERE NOT condition;
    ```

## Operadores IS NULL / IS NOT NULL

- **IS NULL** se utiliza para probar valores vacíos (valores NULL).
    ```sql
    SELECT column1, column2, ...
    FROM nombre_tabla
    WHERE column2 IS NULL;
    ```

- **IS NOT NULL** se utiliza para probar valores no vacíos (valores NO NULOS).
    ```sql
    SELECT column1, column2, ...
    FROM nombre_tabla
    WHERE column2 IS NOT NULL;
    ```
## TOP, LIMIT, FETCH FIRST o ROWNUM

Se utiliza para especificar el número de registros a devolver.

Es útil en tablas grandes con miles de registros ya que devolver una gran cantidad de registros puede afectar el rendimiento.

Según el gestor de bases de datos, se utiliza 
- **TOP**( MS Access)
- **LIMIT** (MySQL)
- **FETCH FIRST, ROWNUM** (ORACLE) 

```sql
SELECT * FROM nombre_tabla
LIMIT 3;
```

## MIN() y MAX()

`MIN()` devuelve el valor más pequeño de la columna seleccionada.
```sql
SELECT MIN(column_name)
FROM table_name
WHERE condition;
```
`MAX()` devuelve el valor más grande de la columna seleccionada.
```sql
SELECT MAX(column_name)
FROM table_name
WHERE condition;
```

## COUNT(), AVG() y SUM()

`COUNT()` devuelve el número de filas que coincide con un criterio específico.
```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

`AVG()` devuelve el valor promedio de una columna numérica. 
```sql
SELECT AVG(column_name)
FROM table_name
WHERE condition;
```

`SUM()` devuelve la suma total de una columna numérica. 
```sql
SELECT SUM(column_name)
FROM table_name
WHERE condition;
```

## LIKE

`LIKE` se usa junto a `WHERE` para buscar un patrón específico en una columna.

Hay dos comodines:

`(%)` representa cero, uno o varios caracteres  
`(_)` representa un solo carácter  
`[charlist]` 

```sql
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
```

LIKE ..|	Description
|--|--|
**'a%'**|	Finds any values that start with "a"
**'%a'**|	Finds any values that end with "a"|
**'%or%'**|	Finds any values that have "or" in any position
**'_r%'**|	Finds any values that have "r" in the second position
**'a_%'**|	Finds any values that start with "a" and are at least 2 characters in length
**'a__%'**|	Finds any values that start with "a" and are at least 3 characters in length
**'a%o'**|	Finds any values that start with "a" and ends with "o"


## IN

`IN` Permite especificar múltiples valores en la cláusula `WHERE`.

Es una forma abreviada de múltiples condiciones `OR`.

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
```
```sql
SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);
```