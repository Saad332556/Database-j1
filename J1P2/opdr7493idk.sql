use snoepwinkel;
select * from snoep;
describe snoep;
insert into snoep value (1,'zoete drop',2.99,'N','2020-05-01');
insert into snoep value (2,'noga blok',1,'Y','2020-06-02 12:23:34');
insert into snoep (snoepid,naam,pinda_aanwezig,productiedatum)
values(4,'pindarotjes','Y','2020-02-19');
insert into snoep (snoepid,naam,prijs,pinda_aanwezig,productiedatum)
values(5,'kaneelstok',1.99,'N','2020-02-19');
insert into snoep (naam,snoepid,prijs,pinda_aanwezig,productiedatum)
values('winegum',7,2.79,'N',sysdate());
