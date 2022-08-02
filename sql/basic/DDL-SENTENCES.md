# CREATE
La sentencia CREATE **se utiliza para crear diferentes
objetos**: bases de datos, tablas, constraints, etc.

1. Para crear una base de datos:

    ```sql
    CREATE DATABASE nombre_base_de_datos;

    ```
2. Para crear una tabla:
    ```sql
    CREATE TABLE nombre_tabla (
    nombre_columna_1 tipo_de_dato,
    nombre_columna_2 tipo_de_dato,
    ... );
    ```

Un campo puede ser definido como entero, cadena de caracteres, fecha, flotante, entre otros. Las palabras reservadas para indicar el tipo de dato dependerán de la variante de SQL que se utilice.

También es posible definir si el campo no admite valores nulos, si el campo es autoincremental y otras restricciones.

# ALTER

Para **modificar la definición de un objeto** de la base de datos se utiliza ALTER.  
ALTER permite modificar la definición de una tabla, ya sea sus columnas (agregar, modificar o eliminarlas) o sus constraints.

1. Agregar una columna a una tabla:
    ```sql
    ALTER TABLE nombre_tabla ADD nueva_columna
    tipo_de_datos;

    ```
2. Modificar una columna de una tabla:
    ```sql
    ALTER TABLE nombre_tabla MODIFY nombre_columna nuevo_tipo_datos;
    ```

3. Eliminar una columna de una tabla:
    ```sql
    ALTER TABLE nombre_tabla DROP COLUMN nombre_columna;
    ```

# DROP

Se utiliza para eliminar una tabla o Base de Datos.

```sql
DROP TABLE nombre_tabla;
```
```sql
DROP DATABASE nombre_bd;
```

