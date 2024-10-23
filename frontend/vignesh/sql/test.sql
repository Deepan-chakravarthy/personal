create schema vignesh;
create table vignesh.employ_table (id int, name varchar(20),email varchar(50),age int,marks int );
drop table   vignesh.employ_table;
create table vignesh.employ_table (id int, name varchar(20),email varchar(50),age int,marks int,ranks int);
insert into vignesh.employ_table  (id,name,email,age,marks,ranks) values

(1,'Raju kumar','raju@gmail.com',35,90,2),
(2,'Ramesh Kumar','ramesh@g.com',40,81,3),
(3,'Suresh Babu','suresh@g.com',42,72,4),
(4,'Balaji','bala@g.com',70,65,6),
(5,'Kajith Raju','kaj@g.com',63,40,7),
(6,'Gowtham Kumar','gow@g.com',47,69,5),
(7,'Mohan Kumar','moh@g.com',40,72,4),
(8,'Harish Ram','har@g.com',36,90,2),
(9,'SathyaRaj','sat@g.com',38,99,1),
(10,'Rajaram Mohan','rajmohan@g.com',42,81,3);

select * from vignesh.employ_table;

select * from vignesh.employ_table where age > 37  and age < 60 ;
select name,ranks from vignesh.employ_table where age between 37 and 60 and marks>45 and name like"%kumar";
select * from vignesh.employ_table where name like"%ra%" and (age>40 or marks>75);
