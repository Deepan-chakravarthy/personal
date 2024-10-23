SELECT * FROM thiru.student;
use thiru;
select id,stud_name, sum(maths+physics+chemistry) as Total from student group by id;

select id,stud_name, (maths+physics+chemistry)/3 as Average from student group by id;

select avg(maths) as Average_Maths, avg(physics) as Average_Physics, avg(chemistry) as Average_Chemistry from student;
select avg(maths) as Maths, avg(physics) as physics, avg(chemistry) as chemistry  from student;

select id,stud_name, max(maths),max(physics),max(chemistry) from student group by id;

select id,stud_name,maths from student where maths=(select max(maths) from student);
select id,stud_name,physics from student where physics=(select max(physics) from student);
select id,stud_name,chemistry from student where chemistry=(select max(chemistry) from student);