DROP TABLE tablajson;
SELECT * FROM tablajson;
SHOW fields FROM tablajson;

CREATE TABLE tablajson (campo JSON NOT NULL);

INSERT INTO tablajson values('{"mascota":{"animal":"perro","raza":"malamute"}}');
INSERT INTO tablajson values(
'{
	"mascota":{
		"animal": "perro",
		"raza":  "Malamute"
	}
}');

INSERT INTO tablajson values(
'{
	"utiles":{
		"lapiceras": "azules",
		"lapices":  "negros"
	}
}');

SELECT JSON_EXTRACT(campo, '$.mascota.animal') AS animalito FROM tablajson;
UPDATE tablajson SET campo = JSON_REPLACE(campo,'$.mascota.raza','Akita Inu');
UPDATE tablajson SET campo = JSON_REMOVE(campo, '$.mascota.animal') WHERE JSON_EXTRACT(campo, '$.mascota.raza') = 'Akita Inu';
DELETE FROM tablajson WHERE JSON_EXTRACT(campo, '$.mascota.raza') = 'Akita Inu';