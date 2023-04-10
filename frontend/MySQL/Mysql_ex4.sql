-- Questions;  

/* create a student table id,name,age,email,mobileno,street,area,city,district,pincode,collegename,collegecode,universityname,semester,
tamil,english,maths,physics,chemis,bio,collegedoorno,collegestreet,collegeare,collegecity,collegedistrict,collegepincode,c.state,yearofpassout,
f_name(30),l_name(20),
add a column as aadhar and value be yes or no varchar,
insert data,
execute update query to transfer the value y=1,n=0. change the datatype
as aadhar varchar to boolean. 
i want particular student semesterwise avg mark. 
add a column degree and dept and also update values. 
semesterwise department wise max mark.
overall which college is the first marks in the particular year.
*/

use training;
show tables;
create table student_details(id int primary key,name varchar(30),first_name varchar(30),last_name varchar(20),age int,email varchar(40),
mobileno bigint,street varchar(20),area varchar(20),city varchar(20),district varchar(20),pincode double,collegename varchar(30),collegecode varchar(10),universityname varchar(30),
semester int,tamil int,english int,maths int,physics int,chemistry int,biology int,collegedoorno int,collegestreet varchar(30),collegearea varchar(30),
collegecity varchar(30),collegedistrict varchar(20),collegepincode double,collegestate varchar(20),yearofpassout int);
drop table student_details;
select*from student_details;

insert into student_details values(110,'raj','raj','kumar',22,'raj@gmail.com',832345343,'raj street','kannagi nagar','chennai','chennai',
600355,'pachayappan college','30023','madras university',6,78,78,89,90,67,56,1012,'patchai street','kannagi nagar','chennai','chennai',600355,'tamilnadu',2021);


select*from student_details;
desc student_details;

alter table student_details add column aadhar varchar(5) after mobileno;
update student_details set aadhar='yes' where id in (101,103);
update student_details set aadhar='no' where id in (102,104,105,106,107,108,109,110);
set sql_safe_updates=0;
update student_details set aadhar='0' where aadhar='no';
update student_details set aadhar='1' where aadhar='yes';

alter table student_details modify aadhar boolean;

alter table student_details add column degree varchar(10) after semester;
update student_details set degree='M.Sc' where id in (101,102,103,104,105,106,107,108,109,110);

alter table student_details add column dept varchar(27) after degree;
update student_details set dept='Computer science' where id in(101,107,104);
update student_details set dept='Physics' where id in(102,105,108);
update student_details set dept='mathametics' where id in(106,109,110);
update student_details set dept='Chemistry' where id=103;

select*from student_details;

select  id,name,semester,degree,dept,avg(tamil+english+maths+physics+chemistry+biology)/6 as avg_marks  from student_details group by semester;
select  id,name,collegename,semester,degree,dept,yearofpassout,(tamil+english+maths+physics+chemistry+biology)/6 as avg_marks  from student_details group by semester order by avg_marks desc limit 1;

select*from student_details;

select id,name,collegename,semester,degree,dept,yearofpassout,max(tamil+english+maths+physics+chemistry+biology) as maximum_marks from student_details group by semester;

select id,name,collegename,degree,dept,max(tamil),max(english),max(maths),max(physics),max(chemistry),max(biology) from student_details group by semester,dept;
select id,name,semester,degree,dept,avg(tamil+english+maths+physics+chemistry+biology)/6 from student_details where id=103;
select collegename,semester,dept,yearofpassout,max(tamil+english+maths+physics+chemistry+biology) as maximum_mark from student_details group by semester,dept;
select collegename,dept,yearofpassout,max(tamil+english+maths+physics+chemistry+biology) as best_college from student_details where yearofpassout=2022 group by yearofpassout;
