create schema st;
use st;

select * from student;
create table student(id int primary key auto_increment, name varchar (20), maths int , physics int , chemistry int);
insert into student(id,name , maths , physics, chemistry) values(1, 'tamil', 89,90,87);
insert into student(name , maths , physics, chemistry) values( 'niv', 49,70,87);
insert into student(name , maths , physics, chemistry) values( 'mani', 90,80,87),
( 'suman', 56,78,90),
( 'raj', 56,67,88),
( 'siva', 55,66,87),
( 'gabi', 49,66,67),
( 'kish',65,70,67),
( 'ajay', 49,88 ,87);
insert into student values(10,'balaji', 60,90,90);


select id, name, sum(maths+physics+chemistry) as total, sum(maths+physics+chemistry)/3 as average from student group by name;

select avg(physics) as avg_physics,avg(chemistry) as avg_chemistry,avg(maths)as avg_maths from student;

select name ,physics from student where physics=(select max(physics) from student);
select name ,chemistry from student where chemistry=(select max(chemistry) from student);
select name ,maths from student where maths=(select max(maths) from student);



