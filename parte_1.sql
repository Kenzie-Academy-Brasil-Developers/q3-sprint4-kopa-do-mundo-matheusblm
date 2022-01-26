CREATE TABLE IF not exists kopas(
	id 	BIGSERIAL 	PRIMARY KEY,
	selecao 	VARCHAR(128) 	unique,
	qnt_copas 	INTEGER
);

insert into
	kopas(selecao, qnt_copas)
values
	('Brasil',5),
	('Alemanha',5),
	('Itália',4),
	('Argentina',2),
	('França',2),
	('Uruguai',2),
	('Inglaterra',1),
	('Espanha',1),
	('Japão',1);

select selecao,qnt_copas from kopas

update kopas set qnt_copas = 4 where selecao like 'Alemanha%';
DELETE FROM kopas where selecao like 'Japão%';

select * from kopas;