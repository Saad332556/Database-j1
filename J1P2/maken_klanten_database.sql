/* Maken van database Klanten
t.b.v. SQL_theorie
versie mysql
Manon Jager
*/

-- Database verwijderen als deze bestaat
drop database if exists Klanten;
-- Maken database
create database Klanten;

use Klanten;

# Maken tabellen in database

create table tblKlant(
klantnr				char(5),
Naam				varchar(30),
Adres				varchar(30),
Postcode			char(6),
Plaats				varchar(20),
Directeur			varchar(30),
Telefoonnr			char(11),
Inschrijfnr_kvk		char(10),
Kredietlimiet		int,
Krediettermijn		int,
Rentepercentage		int,
KlantSinds			datetime,
primary key (Klantnr));

create table tblArtikel(
Artikelnr			int ,
Artikelgroep		varchar(15),
Verpakking			varchar(15),
Inhoud				int,
Omschrijving		varchar(50),
Btwcode				int,
emballage			decimal(5,2),
prijs				decimal(5,2),
primary key (artikelnr));

create table tblFactuur(
factuurnr			int ,
klantnr				char(5),
factuurdatum		datetime,
facturist			varchar(30),
afrekenmethode		char(1),
primary key (factuurnr));

create table tblFactuurRegel(
Factuurnr			int,
Artikelnr			int,
Besteld				int,
Geleverd			int,
primary key (Factuurnr, Artikelnr));

-- Maken relaties tussen de tabellen

alter table tblFactuurRegel add foreign key (Factuurnr) references tblFactuur(Factuurnr);
alter table tblFactuurRegel add foreign key (Artikelnr) references tblArtikel(Artikelnr);
alter table tblFactuur add foreign key (Klantnr) references tblKlant(klantnr);

-- Vullen van de tabellen

insert into tblArtikel values (1,'DVD','doos',24,'Ice age III',2,0,19.95);
insert into tblArtikel values (2,'BLUERAY','doos',24,'Ice age III',2,0,29.95);
insert into tblArtikel values (3,'DVD','doos',24,'Star Wars 2',2,0,11.95);
insert into tblArtikel values (4,'CD','Spindel',50,'TDK CR-R 700mb',2,0,14.95);
insert into tblArtikel values (5,'CD','doos',48,'Hitzone 50',2,0,14.95);
insert into tblArtikel values (6,'BLUERAY','doos',24,'The proposal',2,0,24.95);
insert into tblArtikel values (7,'DVD','doos',24,'The Hanver',2,0,17.95);
insert into tblArtikel values (8,'CD','doos',48,'Thriller',2,0,9.95);
insert into tblArtikel values (9,'DVD','doos',24,'Angels en Demons- Het Bernini Mysterie',2,0,8.95);
insert into tblArtikel values (10,'CD','Spindel',100,'TDK CR-R 700mb',2,0,29.95);


insert into tblKlant values ('kw1c','Koning Willem I College','Postbus 38', '2410AA', 'Bodegraven', 'B. van Strien','073-6249909','s-10029122', 5000,30,5,'2000-1-1');
insert into tblKlant values ('AMC','Academisch ziekenhuis','Oosterbaan 31', '1012XX', 'Amsterdam', 'A. Griep','020-7243239','z-40527132', 15000,20,10,'1990-7-1');
insert into tblKlant values ('BMC','Bosch Medisch Centrum','Vlijmenseweg 13', '5051HT', 'Den Bosch', 'C. Ardiologie','073-5487124','z-84039462', 15000,30,5,'1995-9-1');
insert into tblKlant values ('KW1','Koning Willem I','Ringbaan Noord 123', '5123OP', 'Tilburg', 'K. Weetnie','013-3740294','s-20048392', 0,0,0,'2009-7-1');
insert into tblKlant values ('AVANS','Avans Den Bosch','Onderwijsboulevard 5', '5052DE', 'Den Bosch', 'L. Eergraag','073-6243239','s-40384932', 10000,10,10,'2001-2-1');
insert into tblKlant values ('FontA','Fontys Amsterdam','Den Dam 543a', '1018QS', 'Amsterdam', 'I. van der Steen','020-7463889','s-40527987', 5000,10,5,'1998-10-1');
insert into tblKlant values ('FontT','Fontys Tilburg','Heuvel 16', '5056RR', 'Tilburg', 'K. Kennis','020-7243239','s-34527132', 15000,30,10,'1998-3-1');
insert into tblKlant values ('FontE','Fontys Eindhoven','Philipsstraat 34', '5101AZ', 'Eindhoven', 'A. Logica','020-7243239','s-10234532', 0,0,0,'2004-10-1');
insert into tblKlant values ('HASA','HAS Amsterdam','Kalverstraat 233b', '1009KS', 'Amsterdam', 'T. Torvald','020-7243239','s-94949302', 7500,10,5,'2004-3-1');
insert into tblKlant values ('HASD','HAS Den Bosch','Dieze 23', '5241KN', 'Den Bosch', 'B. Gates','020-7243239','s-14055271', 20000,20,10,'2009-6-1');

insert into tblFactuur  values (1,'kw1c','2009-1-1','P. Overbeek','B');
insert into tblFactuur  values (2,'kw1c','2009-2-1','R. Meijerink','B');
insert into tblFactuur  values (3,'kw1c','2009-3-1','R. Meijerink','P');
insert into tblFactuur  values (4,'Avans','2009-4-1','P. Overbeek','C');
 