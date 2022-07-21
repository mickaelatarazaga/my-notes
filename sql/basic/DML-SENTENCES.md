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
SELECT atributo_1, atributo_2 FROM nombre_tabla
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
