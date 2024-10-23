------------- DDL ---------
create schema day1;
create table day1.training (id int,name varchar(20),age int);
alter table day1.training change id rollno varchar(20);
desc day1.training;
alter table day1.training modify name varchar(30);
alter table day1.training modify rollno int;
alter table day1.training rename column name to first_name;
alter table day1.training add column last_name varchar(20) after first_name;
alter table day1.training add column email varchar(20);
drop table day1;
drop schema day1;

------------- DML -----------
insert into day1.training (rollno,first_name,last_name,age,email) values (1,'jhon','cena',25,'jhon@gmail.com'),(1,'jhon','cena',25,'jhon@gmail.com'),
(1,'jhon','cena',25,'jhon@gmail.com'),(1,'jhon','cena',25,'jhon@gmail.com'),(1,'jhon','cena',25,'jhon@gmail.com');
insert into day1.training (rollno,first_name,last_name,age,email) values (2,'jhon','cena',25,'jhon@gmail.com');
select * from day1.training;
update day1.training set first_name = 'HHH' where rollno=2;
set sql_safe_updates = 0;
delete from day1.training where rollno = 1;
update day1.training set last_name = null where rollno = 2;
delete from day1.training where last_name = "cena";
truncate day1.training;

----------------- TCL ---------------
insert into day1.training (rollno,first_name,last_name,age,email) values (1,'jhon','cena',25,'jhon@gmail.com');
select * from day1.training;