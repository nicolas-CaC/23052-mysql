USE java23052;

DROP TABLE personas;
SELECT * FROM personas;
SHOW INDEX FROM personas;

CREATE TABLE personas (
	nombre varchar(20) NOT NULL,
	apellido varchar(20) NOT NULL,
	dni decimal(9),
	edad TINYINT UNSIGNED NOT NULL,
	domicilio enum('CABA','GBA'),
	PRIMARY KEY (nombre, apellido, dni)
);

CREATE TABLE personas (
	nombre varchar(20) NOT NULL,
	apellido varchar(20) NOT NULL,
	dni decimal(9),
	edad TINYINT UNSIGNED NOT NULL,
	domicilio enum('CABA','GBA'),
	INDEX indice (nombre, apellido, dni)
);

CREATE TABLE personas (
	nombre varchar(20) NOT NULL,
	apellido varchar(20) NOT NULL,
	dni decimal(9),
	edad TINYINT UNSIGNED NOT NULL,
	domicilio enum('CABA','GBA'),
	UNIQUE indice (nombre, apellido, dni)
);


INSERT INTO personas VALUES ('Jose','Perez',12123123,35,1);
INSERT INTO personas VALUES ('Jose','Lopez', 45456456,35,1);
INSERT INTO personas VALUES ('Susana','Perez',12123123,35,1);
INSERT INTO personas VALUES ('Jose','Perez',78789789,35,1);
INSERT INTO personas VALUES ('Jose','Perez',12123123,70,2);
