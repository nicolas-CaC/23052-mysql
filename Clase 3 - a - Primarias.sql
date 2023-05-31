SELECT * FROM usuarios;
DROP TABLE usuarios;
DESCRIBE usuarios;

-- Clave primaria simple

CREATE TABLE usuarios(
	id int AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(100) NOT NULL,
	edad TINYINT UNSIGNED DEFAULT 18
);

-- Clave primaria compuesta

CREATE TABLE usuarios (
	id int AUTO_INCREMENT NOT NULL,
	nombre varchar(100) NOT NULL,
	edad TINYINT UNSIGNED DEFAULT 18,
	PRIMARY KEY (id, nombre)
);

-- INDEX con alias

CREATE TABLE usuarios (
	id int AUTO_INCREMENT NOT NULL,
	nombre varchar(100) NOT NULL,
	edad TINYINT UNSIGNED DEFAULT 18,
	INDEX index_compuesto (id, nombre)
);

SHOW INDEX FROM usuarios;

-- Unique

CREATE TABLE usuarios (
	id int AUTO_INCREMENT NOT NULL,
	nombre varchar(100),
	edad TINYINT UNSIGNED DEFAULT 18,
	UNIQUE indice (id, nombre)
);

INSERT INTO usuarios (nombre) VALUES ('Jose');
INSERT INTO usuarios (nombre, edad) VALUES ('Pedro', 25);
INSERT INTO usuarios VALUES (1, 'Sara', 20);
INSERT INTO usuarios (nombre, edad) VALUES ('Jose', 23);
INSERT INTO usuarios (edad) VALUES (53);
INSERT INTO usuarios VALUES (2, 'Pedro', 49);
INSERT INTO usuarios VALUES (3, 'Jose', 49);



