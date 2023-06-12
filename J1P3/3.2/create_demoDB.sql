drop database if exists demo;
create database demo;
use demo;
-- tabel om groeperen makkelijk uit te leggen

create table figuur (nr int, vorm varchar(10), kleur varchar(10));
insert into figuur values (1,'cirkel','rood');
insert into figuur values (2,'cirkel','zwart');
insert into figuur values (3,'vierkant','blauw');
insert into figuur values (4,'driehoek','blauw');
insert into figuur values (5,'vierkant','zwart');
insert into figuur values (6,'vierkant','groen');
insert into figuur values (7, 'vierkant', 'groen');

commit;