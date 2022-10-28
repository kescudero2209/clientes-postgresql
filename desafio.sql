CREATE DATABASE desafio_karla_escudero_229;	

\c desafio_karla_escudero_229

CREATE TABLE customers(
id SERIAL PRIMARY KEY, 
email VARCHAR(50), 
name VARCHAR, 
number VARCHAR(16), 
company VARCHAR(50), 
priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
);

INSERT INTO customers(email,name,number,company,priority) values('libreriachile@gmail.com','Páginas libres','22341673','Librerias Chile',4),('confitessantiago@gmail.com','Confites felices','22789514','Confites santiago',6),('chileti@gmail.com','Tecnologías chile','22916473','Chile TI',8),('pasionmusica@gmail.com','Música pasión','22745163','Música y Pasión',9),('animalespeñalolen@gmail.com','Veterinaria Peñalolen','22561946','Animales Peñalolen',10);

SELECT * FROM customers ORDER BY priority DESC, id ASC LIMIT 3;

SELECT * FROM customers WHERE company = 'Música y Pasión' OR priority = 10;

\q