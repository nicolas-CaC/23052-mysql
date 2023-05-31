USE java23052;
DESCRIBE booleanos;

DROP TABLE booleanos;
SELECT * FROM booleanos;
SHOW fields FROM booleanos;

CREATE TABLE booleanos(
	tipobit bit(3),
	tipoboolean boolean
);

INSERT INTO booleanos VALUES (001, 1);
INSERT INTO booleanos VALUES (b'010', 0);
INSERT INTO booleanos VALUES (b'0101', 11);