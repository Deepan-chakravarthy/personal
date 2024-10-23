create  schema practicals;
use practicals;
drop schema practicals;

create table employees(
id int auto_increment primary key, 
first_name varchar(20), 
last_name varchar(20), 
age int,
salary int);

create table mobile(
id int auto_increment primary key,
number bigint,
operators varchar(20),
plan varchar(10),
employee_id int,
foreign key (employee_id) references employees(id)); 

create table email(
id int auto_increment primary key,
username varchar(20),
provider varchar(10),
created_date date,
employee_id int,
foreign key (employee_id) references employees(id)); 
 
 
insert into employees(first_name,last_name,age,salary) values 
("akash","kumar",34,20000),
("dinesh","kumar",44,25000),
("sandeep","kumar",24,28000),
("dinesh","babu",18,25000),
("dinesh","aravindh",34,15000),
("akash","bachchan",39,100000),
("vignesh","waran",34,10000),
("dinesh","kumar",23,42000),
("dinesh","karthi",31,38000),
("akash","selvam",23,29000);

truncate employees;

insert into mobile(number,operators,plan,employee_id) values
(1234567891,"bsnl","basic",3),
(1234567887,"bsnl","platinum",4),
(1234567543,"bsnl","gold",7),
(1234567654,"bsnl","superstar",2),
(1234567786,"bsnl","advance",1),

(1234567123,"airtel","basic",null),
(1234567890,"bsnl","basic",3),
(1234567765,"airtel","gold",5),
(1234567543,"bsnl","gold",7),
(1234567876,"airtel","advance",6),

(1234567890,"bsnl","basic",3),
(1234567887,"bsnl","platinum",4),
(1234567876,"airtel","advance",6),
(1298567654,"vi","superstar",2),
(1234598786,"vi","advance",10),

(1298567123,"jio","basic",null),
(1234576432,"jio","platinum",1),
(1234907765,"jio","gold",5),
(1234567543,"bsnl","gold",7),
(1234567876,"airtel","advance",6);

drop table mobile;

insert into email(username,provider,created_date,employee_id) values
("abcd10","google","2020-6-12",1),
("asdf44","google","2012-5-2",8),
("yht103","google","2022-6-14",1),
("dshahdh56","yahoo","1999-7-15",5),
("abcd10","google","2020-6-12",1),
("jhgayusgb1450","google","2003-9-23",2),
("hfyfs145","yahoo","2008-4-15",1),
("fdygb1045","yahoo","2012-5-20",4),
("aigju1087","google","2000-6-12",6),
("fdjgsdg34","yahoo","2009-12-12",9),
("jygduy980","yahoo","2020-9-12",7),
("usdhdh98","yahoo","2021-6-24",8),
("dshdn67","google","1999-6-15",1),
("dshahdh56","yahoo","1999-7-15",5),
("dhfahsb6556","google","2020-5-16",3),
("dnhbg56","google","2020-11-29",2);

drop table email;

select * from employees;
select * from mobile;
select * from email;

drop table email;

-- QUESTION 1 --
-- select first_name from employees where (age between 20 and 45) or (salary>20000) group by first_name having count(first_name)>2 order by first_name desc; --

 select * from employees as e
 left join mobile as m on
 m.employee_id=e.id
 left join email as em on
 em.employee_id=e.id;
 
 select e.id,e.first_name,count(m.number) as mobile_count,count(em.username) as email_count
 from employees as e
 left join mobile as m on
 e.id=m.employee_id 
 left join email as em on
 e.id=em.employee_id group by e.id;
 
select e.id,e.first_name,count(m.number) as mobile_count 
from employees as e
left join mobile as m on
m.employee_id=e.id group by e.id;
 
 select e.id,e.first_name,count(em.username) as email_count 
 from employees as e
 left join email as em on
 e.id=em.employee_id group by e.id;
 
 -- QUESTION 2 --
 
 select distinct q1.id,q1.first_name,q1.mobile_count,q2.email_count 
 from 
 (select e.id,e.first_name,count(m.number) as mobile_count from employees as e
 left join mobile as m on
 m.employee_id=e.id group by e.id) as q1
 inner join
 ( select e.id,e.first_name,count(em.username) as email_count from employees as e
 left join email as em on
 e.id=em.employee_id group by e.id) as q2 on
 q1.id=q2.id; 
 
 -- QUESTION 3 --
 
 select e.id,e.first_name,m.number,count(m.number) as total_count,count(distinct m.number) as original_count,
 if(count(distinct number)>=1, count(number)-count(distinct number),0) as duplicate_count 
 from employees as e
 left join mobile as m on
 m.employee_id=e.id group by e.id;
 
 select e.id,e.first_name,em.username,count(em.username) as total_count,count(distinct em.username) as original_count,
 if(count(distinct em.username)>=1, count(em.username)-count(distinct em.username),0) as duplicate_count 
 from employees as e
 left join email as em on
 e.id=em.employee_id group by e.id;
 
 select q1.id,q1.total_mobile_count,original_mobile_count,duplicate_mobile_count,total_email_count,original_email_count,duplicate_email_count
 from
 (select e.id,count(m.number) as total_mobile_count,count(distinct m.number) as original_mobile_count,
 if(count(distinct number)>=1, count(number)-count(distinct number),0) as duplicate_mobile_count 
 from employees as e
 left join mobile as m on
 m.employee_id=e.id group by e.id) as q1
 inner join 
 (select e.id,count(em.username) as total_email_count,count(distinct em.username) as original_email_count,
 if(count(distinct em.username)>=1, count(em.username)-count(distinct em.username),0) as duplicate_email_count 
 from employees as e
 left join email as em on
 e.id=em.employee_id group by e.id) as q2 on
 q1.id=q2.id;