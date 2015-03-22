use planes ;
create table planes.acars
(
	ID INT AUTO_INCREMENT primary key,
	DATE_TIME TIMESTAMP,
	FLIGHT varchar(20),
	N_NUMBER varchar(6),
	BLK_ID varchar(5),
	MSG_LABEL varchar(5),
	TEXT_LABEL varchar(100),
	MSG_TEXT varchar(300)
);