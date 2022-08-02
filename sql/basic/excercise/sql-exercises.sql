DROP DATABASE IF EXISTS recruiting;
CREATE DATABASE recruiting;

USE recruiting;
CREATE TABLE candidates(id BIGINT AUTO_INCREMENT , first_name VARCHAR(255) NOT NULL, last_name VARCHAR(255), dni_number VARCHAR(255), address VARCHAR(255) DEFAULT ('Argentina'), PRIMARY KEY (id));

ALTER TABLE candidates DROP dni_number;
ALTER TABLE candidates ADD dni_number VARCHAR(255);
ALTER TABLE candidates MODIFY dni_number INT;

INSERT INTO candidates (last_name, first_name ) VALUES ('Tarazaga','Mickaela');
INSERT INTO candidates 
VALUES (2,'Mickaela','Vispo', 'Mendoza', 34567876), 
(3,'Ezequiel','Virdiano','Mendoza', 23567894);

SELECT * FROM candidates ORDER BY last_name DESC;
SELECT c.id, c.first_name FROM candidates c;
SELECT id, first_name FROM candidates;

SELECT DISTINCT first_name FROM candidates;

SELECT COUNT(id) AS cantidad_candidatos FROM candidates;
SELECT COUNT(*) FROM candidates;

SELECT AVG(id) FROM candidates;
SELECT AVG(id) FROM candidates WHERE id <=9;

SELECT SUM(id) FROM candidates;
SELECT SUM(id) FROM candidates WHERE dni_number IS NOT NULL;
SELECT SUM(dni_number) FROM candidates WHERE dni_number IS NOT NULL;

SELECT * FROM candidates 
WHERE first_name LIKE 'M%' AND last_name LIKE 'T%';

SELECT * FROM candidates 
WHERE first_name LIKE '%a' AND last_name LIKE '%o';

SELECT * FROM candidates 
WHERE last_name LIKE '%p%';

#Trae los candidatos que su apellido comience con "v" y termine con "o"
SELECT * FROM candidates 
WHERE last_name LIKE 'v%o';

#Trae los candidatos que tengan un apellido con 5 letras y que en su 4 lugar contenga la letra "p"
SELECT * FROM candidates 
WHERE last_name LIKE '___p%';

SELECT * FROM candidates 
WHERE address IN ('Mendoza');
SELECT * FROM candidates 
WHERE address NOT IN ('Mendoza');

SELECT * FROM candidates
LIMIT 4;

SELECT MIN(id) FROM candidates;
SELECT MIN(id) FROM candidates WHERE id >3; 
SELECT MAX(last_name) FROM candidates;

UPDATE candidates 
SET dni_number = 23567890 
WHERE dni_number IS NULL;

DELETE FROM candidates WHERE dni_number = 23567890;

DROP TABLE candidates;
DROP DATABASE recruiting;

#Elimina todos los datos de la tabla, sin borrar la estructura
TRUNCATE TABLE candidates;



