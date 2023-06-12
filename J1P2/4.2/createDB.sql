/* createDB.sql
maakt selma database met 3 tabellen en allemaal de PK, geen FK
met voorvoegsel null voor werknemer < 30
versie Manon 
*/
drop database if exists selma;
create database selma;
use selma;
create table werknemer(
wnr int, 
achternaam varchar(50) not null,
voorletters varchar(10) not null, 
voorvoegsel varchar(10), 
adres varchar(50) not null,
postcode varchar(7) not null, 
woonplaats varchar(50) not null,
tel varchar(11) not null,
datum_in_dienst date not null, 
sal decimal(8,2) not null, 
chef int,
primary key(wnr)) 
engine=innodb;
insert into werknemer values (10,'Buck','A.P.','De','Lindelaan 2','1055 PP','Amsterdam','020-9876889','1980-1-1',4567.00,99);
insert into werknemer values (12,'Brasser','K.J.',null,'Lindelaan 18','1055 PP','Amsterdam','020-9876443',STR_TO_DATE('12-10-1988', '%d-%m-%Y'),2148.80,20);
insert into werknemer values (16,'Lievense','I.H.',null,'Hoofdstraat 3','8948 KK','Leeuwarden','058-6675434',STR_TO_DATE('14-10-2004', '%d-%m-%Y'),3148.54,30);
insert into werknemer values (18,'Vliet','P.','Van','Kade 34','1056 KM','Amsterdam','020-9322899',STR_TO_DATE('28-9-2001', '%d-%m-%Y'),1999.70,20);
insert into werknemer values (19,'Umbgrove','M.M.',null,'Talmalaan 3','4351 JG','Vlissingen','0118-768221',STR_TO_DATE('13-11-2006', '%d-%m-%Y'),2988.10,30);
insert into werknemer values (20,'Maas','L.C.',null,'Bosjeslaan 3','3085 HG','Rotterdam','010-2346777',STR_TO_DATE('01-2-2011', '%d-%m-%Y'),3011.30,10);
insert into werknemer values (25,'Neve','G.','De','Prinsengracht 20','1048 GP','Amsterdam','020-7654441',STR_TO_DATE('15-5-1999', '%d-%m-%Y'),3280.67,40);
insert into werknemer values (26,'Geel','J.M.G.',null,'Plein 43','3568 JL','Utrecht','030-5671118',STR_TO_DATE('12-8-2010', '%d-%m-%Y'),2981.10,30);
insert into werknemer values (28,'Zeeuw','A.J.',null,'Julianalaan 6','5610JP','Eindhoven','040-5908891',STR_TO_DATE('11-4-1998', '%d-%m-%Y'),3100.00,35);
insert into werknemer values (30,'Merk','J.','','Eikenlaan 23','3086 GH','Rotterdam','010-2334990',STR_TO_DATE('30-1-2010', '%d-%m-%Y'),4300.50,40);
insert into werknemer values (31,'Paree','G.M.','','Kade 44','1056 KM','Amsterdam','020-9322780',STR_TO_DATE('06-2-2005', '%d-%m-%Y'),1780.50,35);
insert into werknemer values (35,'Jonge','L.M.','De','Gracht 11','6222 AG','Maastricht','043-9012670',STR_TO_DATE('21-3-1990', '%d-%m-%Y'),2118.00,40);
insert into werknemer values (40,'Willegen','W.M.','Van','Beukenlaan 2','3088 LM','Rotterdam ','010-6671246',STR_TO_DATE('09-12-2000', '%d-%m-%Y'),4717.90,99);
insert into werknemer values (45,'Jobse','G.C.','','Singel 128','3088 HJ','Rotterdam','010-9051230',STR_TO_DATE('12-4-2010', '%d-%m-%Y'),4990.95,40);
insert into werknemer values (47,'Jansma','L.M.','','Singel 48','1038 JG','Amsterdam','020-1129045',STR_TO_DATE('11-6-1998', '%d-%m-%Y'),3124.56,35);
insert into werknemer values (48,'Bos','P.','','Beukenlaan 18','3088 LM','Rotterdam','010-6671234',STR_TO_DATE('21-8-2007', '%d-%m-%Y'),3410.34,60);
insert into werknemer values (50,'Loof','J.G.','De','Plein 12','3568 JL','Utrecht','030-5671211',STR_TO_DATE('15-11-2001', '%d-%m-%Y'),2357.00,10);
insert into werknemer values (52,'Maas','M.C.','','Hogeweg 12','3078 KL','Rotterdam','010-1123889',STR_TO_DATE('01-9-1999', '%d-%m-%Y'),2849.90,60);
insert into werknemer values (60,'Vliet','P.C.','Van der','Oranjeplein 23','5655 AA','Eindhoven','040-3434567',STR_TO_DATE('01-4-1990', '%d-%m-%Y'),3878.25,10);
insert into werknemer values (99,'Koning','C.','De','Singel 2','3088 JK','Rotterdam','010-9051229',STR_TO_DATE('01-1-1980', '%d-%m-%Y'),5690.00,null);


create table project(
projectcode int not null,
projectnaam varchar(50) not null,
plaats varchar(50) not null,
projectleider int not null,
startdatum date not null,
budget decimal(8,0) not null,
mailadres varchar(30), 
primary key(projectcode),
unique (mailadres))
engine=innodb;
insert into project values (110,'ITCZ','Rotterdam',40,'2009-01-01',100000,'itcz@mail.nl');
insert into project values (120,'MTS','Rotterdam',10,'2010-08-15',145000,'mts@mail.nl');
insert into project values (130,'CAIA','Amsterdam',30,'2010-10-01',80000,'caia@mail.nl');
insert into project values (140,'GADB','Utrecht',60,'2010-10-12',98000,'gadb@mail.nl');
insert into project values (150,'ZVH','Maastricht',35,'2010-10-12',112000,'zvh@mail.nl');
insert into project values (160,'AAB','Utrecht',16,'2011-01-12',80000,'aab@mail.nl');


create table projectleden(
projectcode int not null, 
wnr int not null, 
gewerktAantalUren int not null, 
primary key(projectcode,wnr)
)
engine=innodb; 
insert into projectleden values(110,	40,	120);
insert into projectleden values(110,	25,	44);
insert into projectleden values(110,	45,	56);
insert into projectleden values(110,	26,	34);
insert into projectleden values(110,	10,	30);
insert into projectleden values(120,	10,	25);
insert into projectleden values(120,	50,	56);
insert into projectleden values(120,	20,	90);
insert into projectleden values(120,	12,	110);
insert into projectleden values(120,	26,	56);
insert into projectleden values(120,	40,	50);
insert into projectleden values(120,	30,	40);
insert into projectleden values(130,	30,	65);
insert into projectleden values(130,	60,	75);
insert into projectleden values(140,	48,	80);
insert into projectleden values(140,	35,	90);
insert into projectleden values(140,	26,	10);
insert into projectleden values(150,	47,	5);
insert into projectleden values(150,	28,	15);
insert into projectleden values(150,	26,	25);
insert into projectleden values(150,	40,	45);
insert into projectleden values(150,	25,	95);
