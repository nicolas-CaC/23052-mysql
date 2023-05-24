CREATE DATABASE javas;
DROP DATABASE javas;
SHOW DATABASES;
USE java23052;
USE javas;

CREATE TABLE productos(
	id int AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(200) NOT NULL,
	precio float NOT NULL,
	descripcion text
);

SHOW tables;
DESCRIBE productos;
SHOW fields FROM productos;
DROP TABLE productos;

INSERT INTO productos(nombre, precio, descripcion) VALUES ('Papa', 10.99, 'Esto es un producto');

INSERT INTO productos(nombre,precio) VALUES 
('Jugo', 5.59),
('Tomate',2.99),
('Sol',1.50);