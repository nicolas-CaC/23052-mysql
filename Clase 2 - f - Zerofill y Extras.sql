DROP TABLE zero_fill;

CREATE TABLE zero_fill(
	id int(6) ZEROFILL,
	age TINYINT ZEROFILL NOT NULL,
	nro SMALLINT(6) ZEROFILL NOT NULL
);

SELECT * FROM zero_fill;

INSERT INTO zero_fill VALUES (1,2,3);
INSERT INTO zero_fill VALUES (10,2,5);


-- -------------------------------

SELECT now() FROM zero_fill;
SELECT curdate() FROM zero_fill;
SELECT curtime() FROM zero_fill;
SELECT dayname(now()) FROM zero_fill;
SELECT datediff('20221018','20201018') FROM zero_fill;

DROP TABLE numero;

SELECT * FROM numero;
CREATE TABLE numero (nro float);
INSERT INTO numero VALUES (12345.50);
SELECT format(nro, 2, 'es_AR') FROM numero;