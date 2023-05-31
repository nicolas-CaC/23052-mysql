USE java23052;
DESCRIBE datos;



DROP TABLE datos;
SELECT * FROM datos;
SHOW fields FROM datos;



CREATE TABLE datos(tipovar varchar(3));
INSERT INTO datos values('abc');

CREATE TABLE datos (tipovar char);
INSERT INTO datos values('a');

CREATE TABLE datos (tipovar char(3));
INSERT INTO datos values('abc');
INSERT INTO datos values('a');



CREATE TABLE datos (tipovarbin BINARY);
INSERT INTO datos values('a');

CREATE TABLE datos (tipovarbin VARBINARY(652));
INSERT INTO datos VALUES (X'0123456789ABCDEF');
INSERT INTO datos VALUES (X'00ff00');
INSERT INTO datos VALUES (LOAD_FILE('c:/1.png'));

CREATE TABLE datos (tipoblob blob);
INSERT INTO datos VALUES (LOAD_FILE('c:\\1.txt'));

CREATE TABLE datos(tipoenum enum('a','b','c') );
INSERT INTO datos VALUES (2);
INSERT INTO datos VALUES (1);
INSERT INTO datos VALUES (3);

CREATE TABLE datos (tiposet SET('a','b','c'));
INSERT INTO datos values('a,c');
INSERT INTO datos values('a,b');
INSERT INTO datos values('a,d'); -- ERROR


CREATE TABLE datos(
	tipochar char,
	tipovarchar varchar(100),
	tipobinary BINARY,
	tipovarbinary varbinary(65000),
	tipotinyblob TINYBLOB,
	tipotinytext TINYTEXT,
	tipoblob BLOB,
	tipotext TEXT,
	tipomediumblob MEDIUMBLOB,
	tipomediumtext MEDIUMTEXT,
	tipolongblob LONGBLOB,
	tipolongtext LONGTEXT,
	tipoenum enum('a','b','c'),
	tiposet SET('a','b','c','x','y','z')
);

INSERT INTO datos values(
	'a',
	'Abcdef',
	'0',
	X'ff0000',
	LOAD_FILE('c:\\1.txt'),
	'Hola',
	LOAD_FILE('c:\\1.png'),
	'Hola como estan?',
	LOAD_FILE('c:\\1.png'),
	'Hola como estan? Y mas',
	LOAD_FILE('c:\\1.png'),
	'Superlargo',
	1,
	'c,x'
);