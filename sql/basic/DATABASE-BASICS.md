

[Tipos de datos](#Tipos)

[Contraints](#Constraints)

[Normalización](#Normalización)

[SQL](/sql/basic/SQL.md)

# Tipos de datos

- Texto: CHAR(n), VARCHAR(n), TEXT
- Números: INTEGER, BIGINT, SMALLINT, DECIMAL(n,s), NUMERIC(n,s)
- Fecha/hora: DATE, TIME, DATETIME, TIMESTAMP
- Lógicos: BOOLEAN

# Constraints

- NOT NULL: Se asegura que la columna no tenga valores nulos.
- UNIQUE: Se asegura que cada valor en la columna no se repita.
- PRIMARY KEY: Es una combinación de NOT NULL y UNIQUE.
- FOREIGN KEY: Identifica de manera única una tupla en otra tabla.
- CHECK: Se asegura que el valor en la columna cumpla una condición dada.
- DEFAULT: Coloca un valor por defecto cuando no hay un valor especificado.
- INDEX: Se crea por columna para permitir búsquedas más rápidas.

# Normalización

Supongamos que tenemos la siguiente tabla  sin normalizar:

![non-normalized table](https://github.com/mickaelatarazaga/Dev-Notes/blob/main/assets/images/sql/non-normalized-table.png?raw=true)

## Primera forma normal (1FN) 

**Atributos atómicos (Sin campos repetidos).**

>Nos ayuda a eliminar los valores repetidos y no atómicos dentro de una base de datos.

![1FN-normalized table](https://static.platzi.com/media/user_upload/Captura%20de%20Pantalla%202019-04-30%20a%20la%28s%29%2017.30.27-e38ed9bb-5d10-4f2b-acdc-fa2fa45433d3.jpg)

## Segunda forma normal (2FN): 

**Cumple 1FN y cada campo de la tabla debe depender de una clave única.**

>Sí tenemos datos que pertenecen a diversas entidades, cada entidad debe tener un campo clave separado.

![2FN-normalized table](https://static.platzi.com/media/user_upload/Captura%20de%20Pantalla%202019-04-30%20a%20la%28s%29%2017.26.28-2a12f9b9-2f11-4a1d-9cb0-23c2595cc260.jpg)


## Tercera forma normal (3FN): 

**Cumple 1FN y 2FN y los campos que NO son clave, NO deben tener dependencias.**

>Ayuda a separar conceptualmente las entidades que no son dependientes. Aquellos datos que no pertenecen a la entidad deben tener una independencia de las demás y debe tener un campo clave propio.

![3FN-normalized table](https://static.platzi.com/media/user_upload/Captura%20de%20Pantalla%202019-04-30%20a%20la%28s%29%2017.27.43-92a1523a-c6fc-42e6-85fb-86dd87ee20af.jpg)

![3FN-normalized table](https://static.platzi.com/media/user_upload/Captura%20de%20Pantalla%202019-04-30%20a%20la%28s%29%2017.27.52-cb96ff88-e8f4-4957-8bbb-ded1cc6cf599.jpg)

## Cuarta forma normal (4FN): 

**Cumple 1FN, 2FN, 3FN y los campos multivaluados se identifican por una clave única.**

>Trata de eliminar registros duplicados en una entidad, es decir que cada registro tenga un contenido único y de necesitar repetir la data en los resultados se realiza a través de claves foráneas.

Una tabla normalizada se vería de la siguiente forma:

![normalized table](https://github.com/mickaelatarazaga/Dev-Notes/blob/main/assets/images/sql/normalized-tables.png?raw=true)

