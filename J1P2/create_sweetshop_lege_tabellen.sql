-- verwijderen
drop database if exists sweetshop;

-- aanmaken dstabase
create database sweetshop;
-- connectie maken naar database
use sweetshop;

-- aanmaken tabellen
-- sweet met direct PK
create table sweet 
(sweetid int, 
sweetname varchar(40), 
categoryid int, 
primary key (sweetid)
)
engine=innodb;

-- category zonder PK
create table category 
(categoryid int, 
categoryname varchar(40)
)
engine=innodb;

-- alter table add PK 
alter table category add constraint category_pk primary key (categoryid);





