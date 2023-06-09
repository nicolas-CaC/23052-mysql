DROP TABLE empleados;
DROP TABLE sectores;
DROP TABLE categorias;

SELECT * FROM empleados;
SELECT * FROM sectores;
SELECT * FROM categorias;

CREATE TABLE empleados (
	id int AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	edad TINYINT UNSIGNED DEFAULT 18,
	PRIMARY KEY (id)
);

CREATE TABLE sectores(
	id int AUTO_INCREMENT,
	nombre varchar(50) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE categorias (
		id int AUTO_INCREMENT,
		nombre varchar(50) NOT NULL,
		clase enum('trainee','jr','ssr','sr'),
		PRIMARY KEY (id)
);



INSERT INTO empleados (nombre, edad) VALUES
('Jose', 25),
('Pedro', 30),
('Ramon', 20),
('Susana', 35);

INSERT INTO sectores (nombre) VALUES 
('Publicidad'),
('UXUI'),
('DEV'),
('PM');

INSERT INTO categorias(nombre, clase) VALUES 
('Frontend', 1),
('Frontend', 3),
('Backend', 2),
('Apps', 3);

-- ---------------------------------------------------------------------

SELECT * FROM puestos;
DROP TABLE puestos;

CREATE TABLE puestos (
	id int AUTO_INCREMENT PRIMARY KEY,
	horario enum('6 a 13hs','13 a 22hs','22 a 6hs'),
	empleadoid int NOT NULL,
	sectorid int NOT NULL,
	categoriaid int,
	FOREIGN KEY (empleadoid) REFERENCES empleados(id) ON UPDATE CASCADE,
	FOREIGN KEY (sectorid) REFERENCES sectores(id) ON UPDATE RESTRICT,
	FOREIGN KEY (categoriaid) REFERENCES categorias(id) ON UPDATE SET NULL
);


INSERT INTO puestos (horario, empleadoid, sectorid,categoriaid) VALUES (1,1,1,1);
INSERT INTO puestos (horario, empleadoid, sectorid,categoriaid) VALUES (1,1,1,2);
INSERT INTO puestos (horario, empleadoid, sectorid,categoriaid) VALUES (1,1,1,4);
INSERT INTO puestos (horario, empleadoid, sectorid,categoriaid) VALUES (1,2,3,4);
INSERT INTO puestos (horario, empleadoid, sectorid,categoriaid) VALUES (1,3,4,4);
INSERT INTO puestos (horario, empleadoid, sectorid,categoriaid) VALUES (1,1,1,5); -- ERROR

UPDATE empleados SET id = 5 WHERE id = 1;
-- UPDATE empleados SET id = 1 WHERE id = 5;

UPDATE sectores SET id = 2 WHERE id = 5;
-- UPDATE sectores SET id = 5 WHERE id = 1; 

UPDATE categorias SET id = 6 WHERE id = 4;
UPDATE categorias SET id = 4 WHERE id = 6;