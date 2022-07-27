# ¿Qué es SQL?
**SQL (Structured Query Language)** es un lenguaje estándar que se utiliza para definir, gestionar y manipular los datos de una Base de Datos Relacional.

## ¿Para qué sirve SQL?

1. Crear bases de datos 
2. Crear, modificar y borrar tablas en una base de datos
3. Determinar restricciones de datos en tablas
4. Crear usuarios y definir sus permisos de acceso
5. Obtener datos de la base de datos a través de consultas
6. Insertar, modificar y eliminar datos de una tabla
7. Crear vistas

# RDBMS

RDBMS significa **Sistema de gestión de bases de datos relacionales**.

Es la base de SQL y de todos los sistemas de bases de datos modernos, como MS SQL Server, IBM DB2, Oracle, MySQL y Microsoft Access.

**Los datos** en RDBMS **se almacenan en objetos de base de datos llamados tablas**. 

Una **tabla** es una **colección** de entradas de datos relacionadas y consta de **columnas y filas**.

Cada tabla se divide en **entidades más pequeñas** llamadas **campos**. Un campo **es una columna en una tabla** que está diseñada para mantener información específica sobre cada registro en la tabla.

Una columna **es una entidad vertical** en una tabla que contiene toda la información asociada con un campo específico en una tabla.

Un **registro**, también llamado fila, es **cada entrada individual que existe en una tabla**. Un registro **es una entidad horizontal** en una tabla.

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

# Cosas a tener en cuenta

1. Las palabras clave de SQL NO distinguen entre mayúsculas y minúsculas: `select` es lo mismo que `SELECT`
2. El punto y coma es la forma estándar de separar cada instrucción SQL en los sistemas de bases de datos que permiten ejecutar más de una instrucción SQL en la misma llamada al servidor. En algunos sistemas es opcional y en otros obligatorio.

## Sentencias SQL
Son los diferentes comandos que nos
sirven para operar sobre los datos. Estos se dividen en:

### [Sentencias DML](/sql/basic/DML-SENTENCES.md) 
Lenguaje de manipulación de datos: permiten **acceder y manipular datos**. Por ejemplo:  

● SELECT  
● INSERT  
● UPDATE  
● DELETE

### [Sentencias DDL](/sql/basic/DDL-SENTENCES.md)
Lenguaje de definición de datos: permiten **crear, modificar o eliminar** objetos de la base de datos. Por ejemplo:  

● CREATE  
● DROP  
● ALTER  

Existen otros tipos de sentencias como las **DCL** (lenguaje de
control de datos) que están relacionadas con los privilegios para acceder a determinados objetos o las **TCL** (lenguaje de control de transacción) para el control de las transacciones. 

