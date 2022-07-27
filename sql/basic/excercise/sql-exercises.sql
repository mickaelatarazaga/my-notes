DROP DATABASE IF EXISTS recruiting;
CREATE DATABASE recruiting;

USE recruiting;
CREATE TABLE candidates(id BIGINT NOT NULL AUTO_INCREMENT , first_name VARCHAR(255) NOT NULL, last_name VARCHAR(255), dni_number VARCHAR(255), address VARCHAR(255) DEFAULT ('Argentina'), PRIMARY KEY (id));

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

SELECT * FROM candidates 
WHERE first_name LIKE 'M%' AND last_name LIKE 'T%';

SELECT * FROM candidates 
WHERE first_name LIKE '%a' AND last_name LIKE '%o';

SELECT * FROM candidates 
WHERE last_name LIKE '%p%';

UPDATE candidates 
SET dni_number = 23567890 
WHERE dni_number IS NULL;

/*DELETE FROM candidates WHERE dni_number = 23567890;



