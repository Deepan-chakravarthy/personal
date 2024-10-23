create schema ex2;
create table ex2.student( id int, name varchar(20),age int, emailid varchar(40), mobilenumber varchar(10), street varchar(20), area varchar(20), city varchar(20), district varchar(20),pin int, state varchar(20),tamil int, english int, maths int, science int );
insert into ex2.student( id,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (1,'Manimaran',10,'maranravi2000@gmail.com', 8610200342 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',50,60,40,70);
alter table ex2.student add column firstname varchar(30) after id;
alter table ex2.student add column lastname varchar(20) after firstname;
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (1,'mani','ravi','Manimaran',10,'maranravi2000@gmail.com', 8610200342 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',50,60,40,70);
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (2,'ram','praveen','rampraveen',20,'ram2020@gmail.com', 8610200343 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',52,40,30,60);
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (3,'vicky','kiran','ramados',30,'ramados00@gmail.com', 1234567890 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',56,90,89,91);
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (4,'govind','ramani','karun',40,'karunkutty0@gmail.com', 4567891239 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',89,98,89,89);
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (5,'praveen','vicky','vignesh',60,'vignesh00@gmail.com', 7894561230 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',89,85,78,72);
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (6,'ayya','dinesh','maran',35,'dinesh3030@gmail.com', 8529637412 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',89,68,89,89);
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (7,'umar','siva','sivakarthik',65,'sivakarthik30@gmail.com', 8956232154 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',89,54,30,25);
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (8,'prakash','ram','prakashram',89,'prakashram2@gmail.com', 8957896359 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',90,45,78,77);
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (9,'ramanan','saivijay','vijaysai',56,'saivijay30@gmail.com', 7415263987 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',52,80,67,89);
insert into ex2.student( id,firstname, lastname,name,age,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science) values (10,'naveen','paneer','naveenraj',45,'naveenraj25@gmail.com', 789854796 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',89,60,30,80);

alter table ex2.student add column aadhar varchar(20) after age;
update ex2.student set emailid ='ramprakash20@gmail.com' where id =2;
select * from ex2.student;
alter table ex2.student modify aadhar boolean;
alter table ex2.student add column uiad boolean;
alter table ex2.student alter column uiad set default true;
desc students;


insert into ex2.student( id,firstname, lastname,name,age,aadhar,emailid,mobilenumber,street,area,city,district,pin,state,tamil,english,maths,science,uiad) values (1,'mani','ravi','Manimaran',10,true,'maranravi2000@gmail.com', 8610200342 ,'mealakadu','thalayamangalam','mng','thanjavur',614016,'tamilnadu',50,60,40,70,1);


desc ex2.student;
------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------
create schema man;
use man;
create table students(id int, name varchar(20), age int,email varchar(50),  marks int, ranks int);
insert into students (id, name, age, email, marks, ranks) values (1,'Raju kumar',35,'raju@gmail.com',90,2);
insert into students (id, name, age, email, marks, ranks) values (2,'Ramesh Kumar',40,'ramesh@g.com',81,3);
insert into students (id, name, age, email, marks, ranks) values (3,'Suresh Babu',42,'suresh@g.com',72,4);
insert into students (id, name, age, email, marks, ranks) values (4,'Balaji',70,'bala@g.com',65,6);
insert into students (id, name, age, email, marks, ranks) values (5,'Kajith Raju',63,'kaj@g.com',40,7);
insert into students (id, name, age, email, marks, ranks) values (6,'Gowtham Kumar',47,'gow@g.com',69,5);
insert into students (id, name, age, email, marks, ranks) values (7,'Mohan Kumar',40,'moh@g.com',72,4);
insert into students (id, name, age, email, marks, ranks) values (8,'Harish Ram',36,'har@g.com',90,2);
insert into students (id, name, age, email, marks, ranks) values (9,'SathyaRaj',38,'sat@g.com',99,1);
insert into students (id, name, age, email, marks, ranks) values (10,'Rajaram Mohan',42,'rajmohan@g.com',81,3);
select * from students;
select * from students where age >37 and age <60;
select marks,name,age from (select * from students where age >37 and age <60) students where marks >45;
select name,ranks from ( select marks,name,ranks from(select * from students where age >37 and age <60) students where marks >45) students where name like "%kumar"order by ranks desc;
select * from students where age between 37 and  60 and marks > 45 and name like "%kumar" order by ranks desc;
select * from students order by ranks;
select * from students where ranks between 2 and 6;
select * from students where email like '%@%';
select * from students where name like '%ra%' and (age >40 or marks >75);
select count(name)as total_name from students;
select avg(marks) as avg_mark from students group by name; 
select name,sum(marks) from students group by name;
select avg(avg_marks)from (select name,sum(marks) as avg_marks from students group by name)as test;
select name,max(avg_marks) from (select name,sum(marks) as avg_marks from students group by name)as test;

select * from students where age between 42 and 70 and name like "%balaji%";

drop table students;
select * from students where name like '%_a%' or '%a_%';
select name , lastname from students where name like '%kumar%' and lastname like '%kumar%';
select * from students where name like '_aj%' or '_ja%' or '_am%' or '_ma%' or '_at%' or '_ta%';


alter table students add column lastname varchar(20);
 
update students set lastname = 'ashokumer' where id =1 ;
update students set lastname = 'ganeshkumar' where id =2 ;
update students set lastname = 'govindaraj' where id =3 ;
update students set lastname = 'dineshkumar' where id =4 ;
update students set lastname = 'gobi' where id =5 ;
update students set lastname = 'kavi' where id =6 ;
update students set lastname = 'senthilkumar' where id =7 ;
update students set lastname = 'kannan' where id =8 ;
update students set lastname = 'muthukumar' where id =9 ;
update students set lastname = 'hari' where id =10 ;
 set sql_safe_updates=0;
 SELECT * FROM students;
 update students set lastname = 'ashokumar' where id=1;
 select (lastname) from students;
 
 select * from students where age in( 35,63,42,70) ;
 
 select * from students where age=35 or age=42 or age=70;
 
 
 
 
 