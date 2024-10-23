create schema santhosh;
use santhosh;

create table company(com_id int primary key,name varchar(20),year int);
drop table company;
 
create table employe(id int primary key , name varchar(20), age int,email varchar(10),degree varchar(20),com_id int,foreign key(com_id)references company(com_id));
alter table employe add foreign key(com_id) references company(id);
drop table employe;
create table mobile(id int primary key, mob_no bigint,sim varchar(20), speed int,Emp_id int,foreign key(Emp_id)references employe(id));
alter table mobile add foreign key(e_id) references employe(id);
drop table mobile;
insert into company values(1,'AAA',2012),
(2,'AAA',2013),
(3,'BBB',2014),
(4,'CCC',2015),
(5,'DDD',2016);
insert into company values(6,'bbbhg',2012);


select* from company;

insert into employe values(11,'sandy',22,'san@gmail','bca',1),
(12,'sure',22,'san@gmail','mca',2),
(13,'servo',22,'san@gmail','ma',3),
(14,'gopal',22,'san@gmail','ma',4),
(15,'gaby',22,null,'bcom',5);
insert into employe values(16,'gopal',30,null,'bcom',null);
 insert into employe values(17,'gopal',30,null,'bcom',6);
 
insert into mobile values(101,989989,'artel',4,11),
 (102,989989,'artel',4,12),
 (103,989989,'artel',3,13),
 (104,null,'artel',4,14),
 (105,null,'artel',4,15),
(106,989989,null,4,null);
 
  select * from company;
  select* from mobile ;
  select* from employe;
 
 
select  * from employe  as e
inner join mobile  as m on
e.id=m.Emp_id right outer join company as c on
c.com_id= e.com_id;



select  * from employe  as e
left outer join mobile  as m on
e.id =m.Emp_id and m.speed=4;

select  * from employe  as e
inner join company as c on
e.com_id  and e.age>20=c.com_id
inner join mobile  as m on
e.id=m.Emp_id and m.speed=4 ;


select* from employe
inner join company on
employe.com_id =company.com_id
inner join mobile on
employe.id=mobile.Emp_id where age>20 and speed=4;

select* from employe
inner join company on
employe.com_id and employe.age>20=company.com_id
inner join mobile on
employe.id=mobile.Emp_id where speed=3 ;
 -- sample;
  select* from company as c
  inner join employe as e on
  c.com_id=e.com_id
  inner join mobile as m on
  e.id=m.emp_id;
  
   (select max(speed)from company as c
  inner join employe as e on
  c.com_id=e.com_id
  inner join mobile as m on
  e.id=m.emp_id);
  
  
select e.name,   count(m.mob_no)from employe  as e
inner join mobile  as m on
e.id=m.Emp_id group by e.name;
  


   
  
  



 
 