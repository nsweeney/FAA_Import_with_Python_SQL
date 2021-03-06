use planes ;
create table planes.master
(
	N_NUMBER varchar(5),
	SERIAL_NUMBER varchar(30),
	MFR_MDL_CODE varchar(7),
	ENG_MFR_MDL varchar(5),
	YEAR_MFR varchar(4),
	TYPE_REGISTRANT varchar(1),
	NAME varchar(50),
	STREET varchar(33),
	STREET2 varchar(33),
	CITY varchar(18),
	STATE varchar(2),
	ZIP_CODE varchar(10),
	REGION varchar(1),
	COUNTY varchar(3),
	COUNTRY varchar(2),
	LAST_ACTION_DATE varchar(8),
	CERT_ISSUE_DATE varchar(8),
	CERTIFICATION varchar(10),
	TYPE_AIRCRAFT varchar(1),
	TYPE_ENGINE varchar(2),
	STATUS_CODE varchar(2),
	MODE_S_CODE varchar(8),
	FRACT_OWNER varchar(1),
	AIR_WORTH_DATE varchar(8),
	OTHER_NAMES_1 varchar(50),
	OTHER_NAMES_2 varchar(50),
	OTHER_NAMES_3 varchar(50),
	OTHER_NAMES_4 varchar(50),
	OTHER_NAMES_5 varchar(50),
	EXPIRATION_DATE varchar(8),
	UNIQUE_ID varchar(8),
	KIT_MFR varchar(30),
	KIT_MODEL varchar(20),
	MODE_S_CODE_HEX varchar(10) primary key
) ;
create unique index n_number_index on planes.master (N_NUMBER) ;
