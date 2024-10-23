/*
 create student table
 (id,name,age,email,mobile,street,area,city,district,pincode,state)
 (college name,college code,university name, college door no,college street,collge city,college district,college pincode, passed out year)
 (semester,tamil,english,maths,physics,cheistry,biology)
 
 1. add first_name varchar(30),last_name varchar(20).
 2.add a column as aadhaar (varchar) and add value
 3.change the data type as boolean for aadhaar.
 4. i want particular students semester wise average mark.
 5.add a column degree and department and also update values.
 6.semester wise and department wise maximum mark.
 7.overall which college is the first mark in particular year.
 
 */
 
 create schema qus2;
 use qus2;
 create table student(id int, name varchar(20), age int, email varchar(20), mobile bigint, street varchar(20), area varchar(20), city varchar(20), district varchar(20), pincode int, state varchar(20));
 create table college(college_name varchar(20), college_code int, university_name varchar(20), college_door_no int, college_street varchar(20), collge_city varchar(20), college_district varchar(20), college_pincode int, passed_out_year int);
 create table semester(semester int, tamil int, english int, maths int, physics int, chemistry int, biology int);
 insert into student values (1, 'parves', 22, 'parves@gmail.com', 9987765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai', 630709, 'tamilnadu'),
(2, 'ibraheem', 18,'ibraheem@gmail.com', 9887765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai' ,630709, 'tamilnadu'),
(3, 'anwar', 28, 'anwar@gmail.com', 9787765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai', 630709, 'tamilnadu'),
(4, 'refai', 20, 'refai@gmail.com', 9687765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai', 630709, 'tamilnadu'),
(5, 'kalam', 19, 'kalam@gmail.com', 9587765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai', 630709, 'tamilnadu'),
(6, 'warith', 23, 'warith@gmail.com', 9487765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai', 630709, 'tamilnadu'),
(7, 'wajith', 16, 'wajith@gmail.com', 9387765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai', 630709, 'tamilnadu'),
(8, 'uvyz', 27, 'uvyz@gmail.com', 9287765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai', 630709, 'tamilnadu'),
(9, 'sharif', 24, 'sharif@gmail.com', 9187765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai', 630709, 'tamilnadu'),
(10, 'satham', 21, 'satham@gmail.com', 9087765432, 'zahir hussain', 'pudur', 'ilayangudi', 'sivagangai', 630709, 'tamilnadu');
insert into college values ('JMC', 111, 'Bharathidhasan', 001, 'race course road', 'tolgate', 'trichy', 620020, 2022),
('BHC', 222, 'Bharathidhasan', 002, 'thillai nagar', 'tolgate', 'trichy', 620020, 2022),
('SJC', 333, 'Bharathidhasan', 003, 'chathiram', 'tolgate', 'trichy', 620020, 2022);
insert into semester values (1, 88, 87, 86, 85, 84, 83), (2, 78, 77, 76, 75, 74, 73), (3, 68, 67, 66, 65, 64, 63);
alter table student change name first_name varchar(30);
alter table student add column last_name varchar(30) after first_name;
alter table student add column Aadhaar varchar(20);
update student set Aadhaar= 'yes' where id in (1,2,6,7,10);
set sql_safe_updates=0;
update student set Aadhaar = 'no' where id in (3,4,5,8,9);
update student set Aadhaar = 1 where Aadhaar ='yes';
update student set Aadhaar = 0 where Aadhaar ='no';
alter table student modify Aadhaar boolean;

select * from student;

select avg(tamil + english + maths + physics + chemistry + biology)/6 as average from semester group by semester;


select semester,(tamil+english+maths+physics+chemistry+biology) as max_mark from semester;

 
alter table student add degree varchar(10);
update student set degree = 'UG' where id in (1,2,6,7,10);
update student set degree = 'PG' where id in (3,4,5,8,9);
alter table student add dept varchar(10);
update student set dept='English' where id in (1,2,6,7,10);
update student set dept = 'CS' where id in (3,4);
update student set dept = 'Bcom' where id in (5,8,9);

select min(tamil + english + maths + physics + chemistry + biology) as minimum_mark from student; 
