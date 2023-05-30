USE java23052;

DROP TABLE numericos;
SELECT * FROM numericos;
SHOW fields FROM numericos;

CREATE TABLE numericos(tinysigned TINYINT);
INSERT INTO numericos VALUES (-129);

CREATE TABLE numericos(tinyunsigned TINYINT UNSIGNED, tinysigned TINYINT DEFAULT 2);
INSERT INTO numericos VALUES (0, -1);
INSERT INTO numericos VALUES (255,-1);
INSERT INTO numericos(tinyunsigned) values(200);

CREATE TABLE numericos(tipodecimal decimal(3,2));
CREATE TABLE numericos (tipofloat float(3,2));
INSERT INTO numericos VALUES (5);
INSERT INTO numericos VALUES (5.1);
INSERT INTO numericos VALUES (5.12);
INSERT INTO numericos VALUES (5.123);
INSERT INTO numericos VALUES (51.12);
INSERT INTO numericos VALUES (5.126);



CREATE TABLE numericos(
	tipotiny TINYINT NOT NULL,
	tiposmall SMALLINT,
	tipomedium MEDIUMINT NOT NULL, 
	tipoint int,
	tipobig bigint,
	tipodecimal decimal(3,2),
	tipofloat float,
	tipodouble double DEFAULT 3	
);

INSERT INTO numericos VALUES (
	127,
	32767,
	8388607,
	2147483647,
	9223372036854775807,
	1.23,
	0.123456789,
	0.1234567890123456789
);