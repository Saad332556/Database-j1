/*
Scriptnaam: demo_snoepwinkel_s1.sql
Auteur: Manon Jager
*/

-- verwijderen database als bestaat, zodat het script opnieuw uitgevoerd kan worden
drop database if exists snoepwinkel;
# maken database
create database snoepwinkel;
use snoepwinkel;
-- maken tabellen


CREATE TABLE snoep (
  snoepid int NOT NULL,
  naam varchar(30) NOT NULL,
  prijs decimal(4,2) ,
  pinda_aanwezig char(1) NOT NULL,
  productiedatum datetime NOT NULL,
  PRIMARY KEY (snoepid))
  engine=innodb;

-- wat hebben we nu gemaakt
describe snoep;

-- dit zijn alle insert na demo insert 
insert into snoep values(1,'zoete drop',2.99,'N','2020-05-01');
insert into snoep values(2,'noga blok',1,'Y','2020-06-02 12:23:34');
insert into snoep values(3,'zuurstok',1.99,'N','2019-12-19');
insert into snoep (snoepid,naam,pinda_aanwezig,productiedatum)
 values(4,'pindarotsjes','Y','2020-08-20');
insert into snoep (snoepid,naam,prijs,pinda_aanwezig,productiedatum) 
values(5,'kaneelstok',1.99,'N','2020-02-19');
insert into snoep  
values(6,'zoute drop',2,'N',sysdate());
insert into snoep (naam, snoepid,prijs,pinda_aanwezig,productiedatum) 
values('winegums', 7,2.79,'N',sysdate());

-- wat zit er in snoep
select * from snoep;