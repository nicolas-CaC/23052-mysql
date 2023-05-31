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






CREATE TABLE puestos (
	id int AUTO_INCREMENT PRIMARY KEY,
	horario enum('6 a 13hs','13 a 22hs','22 a 6hs'),
	empleadoid int NOT NULL,
	sectorid int NOT NULL,
	categoriaid int,
	FOREIGN KEY (empleadoid) REFERENCES empleados(id),
	FOREIGN KEY (sectorid) REFERENCES sectores(id),
);