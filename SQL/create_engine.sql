use planes ;
create table planes.engine 
(
	CODE varchar(5) primary key,
	MFR varchar(10),
	MODEL varchar(13),
	TYPE varchar(2),
	HORSEPOWER varchar(5),
	THRUST varchar(6)
) ;
