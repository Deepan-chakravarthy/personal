create schema Training;
use Training;
create table Student(id int primary key, fname varchar(20), lname varchar(20), age int);
describe student;
insert into student values(1, 'Juan','Gopal',24);
select id from student where fname='Juan';

alter table student change fname first_name varchar(20);
alter table student change lname last_name varchar(20);
alter table student add email varchar(40);
alter table student add phoneno bigint after last_name;
drop table student;
select * from student;

update student set phoneno=6382495327 where id=1;
update student set email='gopaltani14@gmail.com' where id=1;
insert into student values(5, 'Santhosh','Clara',1234567890,23,'santhosh@gmail.com');

show databases;
select*from training_schema.employee_details;

describe training_schema.employee_details;
select*from training_schema.employee_details;
insert into training_schema.employee_details values(1003,'Prathani','12-3-2001',14000,'Analyst','Trichy');

set sql_safe_updates=0;

update training_schema.employee_details set address='Madurai' where emp_id=1003;
select*from training_schema.employee_details;