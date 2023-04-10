Create Schema Company1;
use Company1;
Create table Employee1(Id int not null auto_increment ,Name varchar(20)not null,Age int not null,email varchar(20),Degree varchar(20) not null,Com_Id int,primary key(Id));
insert into Employee1(Name,Age,email,Degree,Com_Id) values
('Imman',22,'Imman@g.com','M.C.A',858),('Jai',23,'Jai@g.com','M.C.A',858),('Jemi',23,'Jemi@g.com','M.S.C',859),('Suresh',30,'Suresh@g.com','B.C.A',926),
('Ram',32,'Ram@g.com','B.S.C',926),('Sam',33,'Sam@g.com','M.S.C',296);
insert into Employee1(Name,Age,email,Degree) values
('Karan',28,'Karan@g.com','B.Tech'),('Ramesh',29,'Ramesh@g.com','M.C.A'),('Tom',36,'Tom@g.com','B.C.A'),('Varun',42,'Varun@g.com','B.Tech');
select * from Employee1;

create table Mobile1(Id int not null ,Number_ int,Operator varchar(20),Speed_MB int);
drop table Mobile1;
insert into Mobile1(Id,Number_,Speed_MB) values(1,1234567890,12),(4,1234569870,12)
insert into Mobile1(Id) values(2),(3);
select * from Mobile1;
update  Mobile1 set Operator='Airtel' where Id=1;
update  Mobile1 set Operator='Jio' where Id=4;

create table Company1(Com_Id int not null ,Name varchar(20) not null,Founded_Year year not null);
insert into Company1(Com_Id,Name,Founded_Year) values
(858,'HCL',2000),(859,'TCS',2002),(926,'CTS',2012),(296,'Infosys',2001);
select * from Company1;

select Employee1.Id,Employee1.Name,Company1.Name,Company1.Founded_Year,Mobile1.Number_ from Employee1 inner join Company1 on Employee1.Com_Id=Company1.Com_Id inner join Mobile1 on Mobile1.Id=Employee1.Id Where Number_ is not Null;