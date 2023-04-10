create schema StudentSample;
use StudentSample;
create table students(id int not null , name varchar(20) not null , age int not null , email varchar(50) not null , marks int not null , ranks int not null );
insert into students values (1,'Raju kumar',35,'raju@gmail.com',90,2),(2,'Ramesh Kumar',40,'ramesh@g.com',81,3),(3,'Suresh Babu',42,'suresh@g.com',72,4),(4,'Balaji',70,'bala@g.com',65,6),
(5,'Kajith Raju',63,'kaj@g.com',40,7),(6,'Gowtham Kumar',47,'gow@g.com',69,5),(7,'Mohan Kumar',40,'moh@g.com',72,4),(8,'Harish Ram',36,'har@g.com',90,2),
(9,'SathyaRaj',38,'sat@g.com',99,1),(9,'SathyaRaj',38,'sat@g.com',99,1);
select * from students where (age between 37 and 60 and marks>45 and name like '%mar');
select name,ranks from students order by ranks;