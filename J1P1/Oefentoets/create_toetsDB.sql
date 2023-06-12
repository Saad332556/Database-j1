drop database if exists toetsdb;
create database if not exists toetsdb;
use toetsdb;
create table kantoren	
(kantnr		int(2) not null,	
naam		varchar(15),	
plaats		varchar(10) )
engine=innoDB
;
INSERT 	INTO KANTOREN VALUES (10,'BOEKHOUDING','AMSTERDAM')
;
INSERT 	INTO KANTOREN VALUES (20,'ONDERZOEK','UTRECHT')
;
INSERT 	INTO KANTOREN VALUES (30,'VERKOOP','DEN HAAG')
;
INSERT 	INTO KANTOREN VALUES (40,'PRODUCTIE','ARNHEM')
;
alter table kantoren add constraint pk_kantoren primary key (kantnr)
;
create table werknemers
 (
 persnr int(4) not null,
 naam varchar(10),
 functie varchar(9),
 mgr int(4),
 sal int(5),
 toeslag int(5),
 kantnr int(2),
 primary key (persnr))
engine=innoDB
;
insert into werknemers values (3381,'SMITS','KLERK',7902,2400,NULL,20)
;
insert into werknemers values (3462,'ALKEMA','VERKOPER',4621,2600,300,30)
;
insert into werknemers values (3518,'WALSTRA','VERKOPER',4621,2250,500,30)
;
insert into werknemers values (3930,'PIETERS','MANAGER',6221,3975,NULL,20)
;
insert into werknemers values (4510,'VERGEER','VERKOPER',4621,2250,1400,30)
;
insert into werknemers values (4621,'KLAASEN','MANAGER',6221,3850,NULL,30)
;
insert into werknemers values (5810,'HEUVEL','MANAGER',6221,3450,NULL,10)
;
insert into werknemers values (5931,'SANDERS','ANALIST',3930,4000,NULL,20)
;
insert into werknemers values (6221,'KRAAY','DIRECTEUR',NULL,6000,NULL,10)
;
insert into werknemers values (6500,'DROST','VERKOPER',4621,2500,0,30)
;
insert into werknemers values (6681,'ADELAAR','KLERK',5931,2100,NULL,20)
;
insert into werknemers values (7900,'APPEL','KLERK',4621,1950,NULL,30)
;
insert into werknemers values (7902,'VERMEULEN','ANALIST',3930,3900,NULL,20)
;
insert into werknemers values (8222,'MANDERS','KLERK',5810,2300,NULL,10)
;

use toetsdb;
CREATE TABLE spelers (
spelnr  int(3)       not null,
naam    varchar(20),
voorl   varchar(3),
jaartoe int(4),
plaats  varchar(10),
bondsnr int(4),
primary key (spelnr)
)engine=innoDB;

INSERT INTO spelers VALUES ( 6,'Honing','R',1977,'Den Haag',8467 );
INSERT INTO spelers VALUES ( 44,'Bakker','E',1980,'Rijswijk',1124 );
INSERT INTO spelers VALUES ( 83,'Martens','PK',1982,'Utrecht',1608 );
INSERT INTO spelers VALUES ( 2,'van der Wal','R',1975,'Den Haag',2411 );
INSERT INTO spelers VALUES ( 27,'Cools','DD',1983,'Utrecht',2513 );
INSERT INTO spelers VALUES ( 104,'Kok','D',1984,'Utrecht',7060 );
INSERT INTO spelers VALUES ( 7,'Sorgdrager','GWS',1981,'Den Haag',null);
INSERT INTO spelers VALUES ( 57,'O''Neal','M',1985,'Den Haag',6409 );
INSERT INTO spelers VALUES ( 112,'Winterdijk','IP',1984,'Rotterdam',1319 );
INSERT INTO spelers VALUES ( 8,'Cools','C',1980,'Rijswijk',2983 );


CREATE TABLE teams
(
teamnr int(2) not null, 
spelnr int(3) not null,
divisie varchar(6) not null,
primary key (teamnr)
)engine=innoDB;

INSERT INTO teams VALUES (1,2,'ere');
INSERT INTO teams VALUES (2,27,'tweede');


CREATE TABLE wedstrijden
(
TEAMNR int(2) NOT NULL,
SPELNR int(3) NOT NULL,
GEWONNEN int(3) DEFAULT 0 NOT NULL,
VERLOREN int(3) DEFAULT 0  NOT NULL
)
engine=innoDB;

INSERT INTO wedstrijden VALUES (1,6,9,1);
INSERT INTO wedstrijden VALUES (1,44,7,5);
INSERT INTO wedstrijden VALUES (1,83,3,3);
INSERT INTO wedstrijden VALUES (1,2,4,8);
INSERT INTO wedstrijden VALUES (1,57,5,0);
INSERT INTO wedstrijden VALUES (1,8,0,1);
INSERT INTO wedstrijden VALUES (2,27,11,2);
INSERT INTO wedstrijden VALUES (2,104,8,4);
INSERT INTO wedstrijden VALUES (2,112,4,8);
INSERT INTO wedstrijden VALUES (2,8,4,4);


CREATE TABLE boetebedragen
(
boetenr int(2) not null,
spelnr int(3) not null,
datum datetime,
bedrag decimal(7,2),
primary key (boetenr)
)engine=innoDB;

INSERT INTO boetebedragen
VALUES (1,6,str_to_date('07-JAN-1990 12:30:00' , '%d-%b-%Y %H:%i:%s' ) ,200);
INSERT INTO boetebedragen
VALUES (2,44,str_to_date('17-FEB-1991 13:45:00' , '%d-%b-%Y %H:%i:%s' ) , 100);
INSERT INTO boetebedragen
VALUES (3,27,str_to_date('28-NOV-1993 09:20:30' , '%d-%b-%Y %H:%i:%s' ) ,100);
INSERT INTO boetebedragen
VALUES (4,104,str_to_date('19-JUN-1994 16:10:45' , '%d-%b-%Y %H:%i:%s' ) , 50);
INSERT INTO boetebedragen
VALUES (5,44,str_to_date('07-JAN-1990 12:30:00' , '%d-%b-%Y %H:%i:%s' ) ,200);
INSERT INTO boetebedragen
VALUES (6,8,str_to_date('07-JAN-1990 20:05:10' , '%d-%b-%Y %H:%i:%s' ) ,200);
INSERT INTO boetebedragen
VALUES (7,44,str_to_date('18-OCT-1992 21:00:25' , '%d-%b-%Y %H:%i:%s' ) , 30);
INSERT INTO boetebedragen
VALUES (8,27,str_to_date('08-JAN-1995 11:32:00' , '%d-%b-%Y %H:%i:%s' ) , 75);

use toetsdb;

create table auto
( nummer int 
, merk varchar(15)
, type varchar(50)
, transmissie varchar(15)
, aantal_deuren int(1)
, catalogusprijs int(7)
, brandstof varchar(10))engine=innoDB
;

insert into auto values ( 1000, 'Alfa Romeo', '145 1.4 16V TS', '5 versn bak', 3, 29600, 'Gas');
insert into auto values ( 1001, 'Alfa Romeo', '145 1.4 16V TS', '5 versn bak', 3, 29600, 'Benzine');
insert into auto values ( 1057, 'Audi', 'A3 1.8 20v 110kw Turbo Ambition', '5 versn bak', 3, 57350, 'Benzine');
insert into auto values ( 1058, 'Audi', 'A3 1.8 20v 110kw Turbo Ambition automaat', 'automaat', 3, 61250, 'Benzine');
insert into auto values ( 1256, 'BMW', '316i N', '5 versn bak', 4, 49950, 'Gas');
insert into auto values ( 1257, 'BMW', '316i N', '5 versn bak', 4, 49950, 'Benzine');
insert into auto values ( 1718, 'Ford', 'Escort 1600 66kw Rs Wagon', '5 versn bak', 5, 33990, 'Benzine');
insert into auto values ( 2100, 'Jeep', 'Wrangler 2.5 Soft Top', '5 versn bak', 3, 51600, 'Gas');
insert into auto values ( 2101, 'Jeep', 'Wrangler 2.5 Soft Top', '5 versn bak', 3, 51600, 'Benzine');
insert into auto values ( 2234, 'Mazda', '323 1.3 Lx "P"', '5 versn bak', 3, 29595, 'Gas');
insert into auto values ( 2390, 'Mercedes', 'C220td Classic Combi', '5 versn bak', 5, 74850, 'Diesel');
insert into auto values ( 2762, 'Opel', 'Corsa X1.7d Eco', '5 versn bak', 5, 27150, 'Diesel');
insert into auto values ( 4105, 'Toyota', 'Corolla 2.0d Linea Terra Hatchback', '5 versn bak', 3, 34340, 'Diesel');
insert into auto values ( 4265, 'Volkswagen', 'Golf 1.9tdi 81kw Trline automaat', 'automaat', 3, 46869, 'Diesel');
insert into auto values ( 4429, 'Volkswagen', 'Polo 1.4 16v 74kw Hatchback', '5 versn bak', 3, 32300, 'Benzine');
insert into auto values ( 4515, 'Volvo', 'S40 1.6 16v', '5 versn bak', 4, 43900, 'Benzine');


use toetsdb;
create table afdelingen
 (ziekhnr int(2) not null,
 afdnr int(2) not null,
 naam varchar (15),
 totbed int(4) )
 engine=innoDB
;
INSERT INTO AFDELINGEN VALUES (10,3,'Intensive Care',21)
;
INSERT INTO AFDELINGEN VALUES (10,6,'Psychiatrie',67)
;
INSERT INTO AFDELINGEN VALUES (15,3,'Intensive Care',10)
;
INSERT INTO AFDELINGEN VALUES (15,4,'Hartafdeling',53)
;
INSERT INTO AFDELINGEN VALUES (20,1,'Hersteloord',10)
;
INSERT INTO AFDELINGEN VALUES (20,6,'Psychiatrie',118)
;
INSERT INTO AFDELINGEN VALUES (20,2,'Kinder',34)
;
INSERT INTO AFDELINGEN VALUES (25,4,'Hartafdeling',55)
;
INSERT INTO AFDELINGEN VALUES (15,1,'Hersteloord',13)
;
INSERT INTO AFDELINGEN VALUES (25,2,'Kinder',24)
;
Create table patienten 
(patnr int(5) not null, 
naam varchar(15), 
plaats varchar(15), 
gebdat datetime, 
mv varchar(1), 
ziekfnr int(7) )
engine=innoDB
;
insert into patienten values (11321,'Koopmans M.','Utrecht',str_to_date('11-dec-1966','%d-%b-%Y'),'M',3542764)
;
insert into patienten values (12816,'Schouten W.','Den Haag',str_to_date('23-apr-1973','%d-%b-%Y'),'V',7466384)
;
insert into patienten values (19381,'Elbers M.','Amsterdam',str_to_date('01-jan-1976','%d-%b-%Y'),'V',9753728)
;
insert into patienten values (25218,'Dekker B.','Utrecht',str_to_date('05-nov-1954','%d-%b-%Y'),'M',8466355)
;
insert into patienten values (30940,'Lammers T.','Arnhem',str_to_date('12-apr-1943','%d-%b-%Y'),'V',3452718)
;
insert into patienten values (38911,'Jong H.','Nijmegen',str_to_date('12-jan-1982','%d-%b-%Y'),'M',4656238)
;
insert into patienten values (39410,'Manders G.','Den Bosch',str_to_date('11-dec-1970','%d-%b-%Y'),'M',2794710)
;
insert into patienten values (45630,'Ravenhorst P.' ,'Eindhoven' ,str_to_date('04-feb-1948', '%d-%b-%Y' ),'M',9872513)
;
insert into patienten values (48220,'Feenstra A.','Breda',str_to_date('27-feb-1977','%d-%b-%Y'),'V',3529976)
;
insert into patienten values (50333,'Horst E.','Utrecht',str_to_date('12-apr-1964','%d-%b-%Y'),'M',1232988)
;
create table stafleden 
(ziekhnr int(2) not null, 
afdnr int(2) not null, persnr int(4) not null, 
naam varchar(15), 
functie varchar(15), 
dienst varchar(6), 
sal int(5) )
engine=innoDB
;
INSERT INTO STAFLEDEN VALUES (10,6,3526,'Dinter B.','Verpleegster','A',17400)
;
insert into stafleden values (10,6,3198,'Hursman J.','Zaalknecht','A',13500)
;
insert into stafleden values (15,4,2342,'Keyzer W.','Assistent','A',18300)
;
insert into stafleden values (20,6,2315,'Horst D.','Verpleegster','N',18300)
;
Insert into stafleden values (20,6,8574,'Beek G.','Zaalknecht','N',12600)
;
insert into stafleden values (20,2,3257,'Mensink C.','Assistent','N',17000)
;
insert into stafleden values (20,1,8632,'Riksen G.','Verpleegster','D',20200)
;
insert into stafleden values (20,1,5342,'Coolen R.','Verpleegster','A',16300)
;
insert into stafleden values (25,4,6543,'Arends R.','Assistent','D',17000)
;
insert into stafleden values (25,2,9835,'Fleskes H.','Verpleegster','A',19400)
;
create table ziekenhuizen 
(ziekhnr int(2) not null,
naam varchar(15), 
plaats varchar(15), 
telefoon varchar(12), 
totbed int(4) )
engine=innoDB
;
insert into ziekenhuizen values ( 10,'AMC','Amsterdam','020-6532617',502 )
;
insert into ziekenhuizen values ( 15,'Diaconessen','Utrecht','030-2646362',587 )
;
insert into ziekenhuizen values ( 20,'Antonius','Nieuwegein','030-6045632',412 )
;
insert into ziekenhuizen values ( 25,'Zuiderzee','Lelystad','0320-255522',845 )
;
create table bezetting
 (patnr int(5) not null,
 ziekhnr int(2) not null,
 afdnr int(2) not null,
 bednr int(2) not null )
engine=innoDB 
;
insert into bezetting values (11321,10,3,1) 
;
insert into bezetting values (12816,10,3,2) 
;
insert into bezetting values (19381,10,3,3) 
;
insert into bezetting values (25218,15,4,1) 
;
insert into bezetting values (30940,15,4,2) 
;
insert into bezetting values (38911,20,6,1) 
;
insert into bezetting values (39410,20,6,2) 
;
insert into bezetting values (45630,20,6,3) 
;
insert into bezetting values (48220,20,2,1) 
;
insert into bezetting values (50333,25,4,1) 
;


show databases;
select * from afdelingen;

use herkansing;
select * from cijfers;