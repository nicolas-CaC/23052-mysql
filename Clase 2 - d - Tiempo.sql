USE java23052;
DESCRIBE tiempo;



DROP TABLE tiempo;
SELECT * FROM tiempo;
SHOW fields FROM tiempo;



CREATE TABLE tiempo(
	tipodate date,
	tipotime time,
	tipodatetime datetime,
	tipoyear YEAR,
	tipotimestamp timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
);

INSERT INTO tiempo (tipodate) VALUES ('2000-12-31');
UPDATE tiempo SET tipodate='2001-01-01';

INSERT INTO tiempo (tipodate) VALUES ('2000/12/31');
INSERT INTO tiempo (tipodate) VALUES ('20001231');

INSERT INTO tiempo (tipotime) VALUES ('12:00:00');
INSERT INTO tiempo (tipotime) VALUES ('120010');

INSERT INTO tiempo (tipodatetime) VALUES ('2012-12-20 23:59:59');
INSERT INTO tiempo (tipodatetime) VALUES ('2012/12/20 23:59:59');
INSERT INTO tiempo (tipodatetime) VALUES ('20121220235859');

INSERT INTO tiempo VALUES (
	'20001231',
	'8385959',
	'20240101235959',
	'1915',
	current_timestamp()
);

