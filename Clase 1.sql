-- BASE DE DATOS
CREATE DATABASE java23052;
DROP DATABASE javas;
SHOW DATABASES;
USE java23052;
USE javas;

-- TABLAS
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

-- INSERTAR VALORES
INSERT INTO productos(nombre, precio, descripcion) VALUES ('Papa', 10.99, 'Esto es un producto');

INSERT INTO productos(nombre,precio) VALUES 
('Jugo', 5.59),
('Tomate',2.99),
('Sol',1.50);

-- MOSTRAR TODOS LOS DATOS DE LA TABLA
SELECT * FROM productos;
SELECT * FROM productos WHERE precio > 5;
SELECT * FROM productos WHERE precio > 5 AND id > 1;
SELECT * FROM productos WHERE precio > 5 OR id >= 4;
SELECT * FROM productos WHERE id in(2,4);
SELECT * FROM productos WHERE id LIKE 3;
SELECT * FROM productos WHERE id <> 3;

SELECT nombre FROM productos;
SELECT nombre FROM productos WHERE precio > 5;
SELECT nombre, precio FROM productos WHERE precio > 5;

-- MODIFICAR CAMPO DE TABLA
ALTER TABLE productos CHANGE nombre titulo varchar(150);
ALTER TABLE productos CHANGE titulo nombre varchar(200);

-- AGREGAR RESTRICCIONES
ALTER TABLE productos ADD CONSTRAINT rating CHECK(precio > 1);
INSERT INTO productos (nombre, precio) VALUES ('carne', 0.5);
ALTER TABLE productos DROP CONSTRAINT rating;

-- MODIFICAR TIPO EN CAMPO DE TABLA
ALTER TABLE productos MODIFY COLUMN nombre varchar(250);

-- ACTUALIZAR VALOR
UPDATE productos SET precio=5.59 WHERE id=1;
UPDATE productos SET precio=9.99, nombre='Papita' WHERE id=1;
UPDATE productos SET precio=9.90 WHERE id=1 AND nombre='Papita';

-- BORRAR FILA
DELETE FROM productos WHERE id < 2;
DELETE FROM productos WHERE id = 2;

-- BORRAR CONTENIDO DE LA TABLA
DELETE FROM productos;
truncate TABLE productos; 