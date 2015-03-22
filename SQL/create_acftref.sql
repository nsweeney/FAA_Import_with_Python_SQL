use planes ;
create table planes.acftref 
(
	CODE varchar(7) primary key,
	MFR varchar(30),
	MODEL varchar(20),
	TYPE_ACFT varchar(1),
	TYPE_ENG varchar(2),
	AC_CAT varchar(1),
	BUILD_CERT_IND varchar(1),
	NO_ENG varchar(2),
	NO_SEATS varchar(3),
	AC_WEIGHT varchar(7),
	SPEED varchar(4)
) ;


