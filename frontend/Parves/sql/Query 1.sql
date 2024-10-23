
use new_file;
create table students
(stu_id int primary key,
student_name varchar(20),
age int,
gender char(1),
class varchar(10),
dep varchar(10),
clg_name varchar(50),
phn_no int);
alter table new_file.students add column student_name varchar(20) after stu_id;
alter table new_file.students change phn_no phone_no varchar(15);
desc students;
insert into new_file.students (stu_id, student_name, age, gender, class, dep, address, phone_no) values (1,"parves",22,"m","mca","cs","jmc",9360913978),
(2,"mushraf",22,"m","mca","cs","jmc",9976293010),(3,"ibraheem",18,"m","bsc","cs","bhc",8248582364);
select * from new_file.students;





