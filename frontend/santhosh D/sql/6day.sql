create schema san;
use san;
create table student(id int,name varchar(20),maths int,physics int,chemistry int);
insert into student values(1,'sandy',87,67,54),
(2,'gopal',56,76,46),
(3,'sure',34,89,65),
(4,'gaby',67,98,34),
(5,'vicky',23,65,90),
(6,'deepan',45,67,46),
(7,'suman',23,98,56),
(8,'santhosh',34,76,29),
(9,'hemanth',45,98,34),
(10,'kumar',34,90,56);
select* from student;

select name,(maths+physics+chemistry) from student group by name;

select name, avg(maths+physics+chemistry) / 3 from student group by name;

select avg(maths) ,avg(physics),avg(chemistry) from student;

select name, max(maths+physics+chemistry) from student group by name;

select name, max(maths+physics+chemistry) from student;





