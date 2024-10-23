create schema trainings;
use trainings;
create table students(id int primary key,frame varchar(20),lname varchar(20),age int);
describe students;
drop table students;

insert into students values(1,'sandy','gabi',3),(2,'gopal','kevin',4);
select * from students;
select min(age)
from students;
alter table students change lname lastname varchar(20);
alter table students add email varchar(40);
alter table students add adrress varchar(20) after lastname;
select * from students;
select frame,plant,salery
from students
where salery is null;

delete from students where id=2;
select * from students;
update students set adrress='tree 'where id=1;
update students set email='sandy@gmail.com'where id=1;
insert into students values(3,'gopal','kevin',3);
update students set email='kevin@gmail.com'where id=2;
insert into students values(4,'surya','gaabi','home',3,'gopal@gmaIL.COM');
insert into students values(5,'surya','gaabi','home',6,'gopal@gmaIL.COM');
update students set id=2 where id=4;
update students set id=3 where id=5;
update students set age=22 where id=3;
update students set age=23 where id=2;
update students set age=22 where id=1;
update students set frame='kevin' where id=2; 
update students set lastname='gopal' where id=2;
update students set lastname='juan' where id=3;
insert into students values(5,'munna','chinna','selam',43,'santho@mail.com');
update students set id=4 where id=5;
alter table students add salery int after email;
alter table students change adrress plant varchar(30);
update students set plant='flowers' where id=4;
update students set salery=2342 where id in (1,2,3,4);
insert into students values(5,'chinna','ramesh','tree',33,'ramesh@gmail.com',231),(6,'suresh','sure','home',33,'sure@gmail.com',453),(7,'dinesh','dine','flowers',22,'dinesh@.com',456),(8,'suji','sug','tree',17,'sugi@.com',543),(9,'irfan','ifan','tree',25,'irfan@g.com',543);
alter table students add english varchar(20),add maths varchar(20),add computer varchar(20), add sience varchar(20) after salery;
alter table students change sience science varchar(20);
update students set science='234'where id in (1,2,3,4,5,6,7,8,9);
update students set tamil='456',english='765',maths='897',computer='768' where id in (1,2,3,4,5,6,7,8,9);
alter table students add total varchar(20);
select id,(science+tamil+english+ maths+computer)from students avg GROUP   BY id;
update students set total= (science+tamil+english+ maths+computer) where id in(1,2,3,4,5,6,7,8,9);
update students set tamil='34543' where id in (1,2,3,4,5,6,7,8,9);
select avg(age)from students;
select avg(age)from students where id in (1,2,3);
select frame from students order by frame desc;
select lastname from students order by lastname desc;
select frame from students order by frame asc;
select min(salery)from students;
alter table students change column salery python varchar(20);
select max(python)from students;
select age > 22 from students ;
select min(python and tamil) from students;
insert into students values(10,'manisha','mani','tree','23','mani@gmail.com',454,654,454,234,234,258,'');
update students set total =(python+science+tamil+english+maths+computer) where lastname='mani';
set sql_safe_updates=0;
select sum(age)from students;
select avg(python)from students;
select min(total)from students;
select max(total) from students;
select * from students where age between 22 and 23;

create  table college(deptment varchar(30),deptmentno int,course varchar(30),city varchar(30));
select * from college;
alter table college add picode int;
alter table college change deptment deprtmentno varchar(30);
alter table college change deprtmentno depno varchar(30);
alter table college change deptmentno depname varchar(30);
insert into college values(21,'ug english','english','vellore',8987),(43,'pg tamil','tamil','tvmalai',8897),(21,'ug maths','maths','tpt',3487),(54,'pg msw','msw','chennai',00087),(78,'pg cs','computer','svm college',6543);
select * from students;
show tables;



create table trigger_table(id int primary key auto_increment,depname varchar(20),course varchar(20),city varchar(20),picode int,time timestamp default now());
create trigger trigger_name before delete on college for each row insert into trigger_table(depname,course,city,picode)values(old.depname,old.course,old.city,old.picode);
delete from college where depno=78;
select * from trigger_table;
set sql_safe_updates=0;