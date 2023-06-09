USE java23052;

SELECT * FROM fundadores;
SELECT * FROM inversionistas;

DROP TABLE fundadores;
DROP TABLE inversionistas;


CREATE TABLE fundadores (
	id int AUTO_INCREMENT PRIMARY KEY,
	name TINYTEXT NOT NULL,
	salary SMALLINT NOT NULL
);

CREATE TABLE inversionistas (
	id int AUTO_INCREMENT PRIMARY KEY,
	name TINYTEXT NOT NULL,
	investment SMALLINT NOT NULL
);



INSERT INTO fundadores (name, salary) VALUES 
('Jose', 2000),
(' Juan', 3000),
('Quique', 5000);


INSERT INTO inversionistas (name, investment) VALUES ('Pepe', 6000);
INSERT INTO inversionistas (name, investment) VALUES ('Juan', 10000);