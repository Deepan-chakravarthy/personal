create schema StudentSample3;
use StudentSample3;
create table students3(id int, name varchar(20), age int  , email varchar(50) , marks int , ranks int);
insert into students3 values (1,'Raju kumar',35,'raju@gmail.com',90,2),(2,'Ramesh Kumar',40,'ramesh@g.com',81,3),(3,'Suresh Babu',42,'suresh@g.com',72,4),(4,'Balaji',70,'bala@g.com',65,6),
(5,'Kajith Raju',63,'kaj@g.com',40,7),(6,'Gowtham Kumar',47,'gow@g.com',69,5),(7,'Mohan Kumar',40,'moh@g.com',72,4),(8,'Harish Ram',36,'har@g.com',90,2),
(9,'SathyaRaj',38,'sat@g.com',99,1),(10,'SathyaRaj',38,'sat@g.com',99,1);
select * from students3 where ((name like '%a%')and(name like '%j%' or name like '%m%' or name like '%t%'));
alter table students3 add last_name varchar(20) after name;
select * from students3;
update students3 set last_name='ashok kumar' where id=1;
update students3 set last_name='Ganesh kumar'where id=2;
update students3 set last_name='Govinda Raj'where id=3;
update students3 set last_name='Dinesh kumar' where id=4;
update students3 set last_name='Gobi' where id=5;
update students3 set last_name='Kavi' where id=6;
update students3 set last_name='Senthil kumar' where id=7;
update students3 set last_name='kannan' where id=8;
update students3 set last_name='Muthu kumar' where id=9;
update students3 set last_name='hari'where id=10;
select * from students3;
select name,last_name from students3 where (name like '%kumar' and last_name like '%kumar');