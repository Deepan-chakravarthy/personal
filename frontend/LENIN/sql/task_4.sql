use first_assignments;
---------------------------
create table student_task4 ( id int , name varchar(20), age int, email_id varchar(50), mobile bigint, 
street varchar(15), area varchar(25), city varchar(25), district varchar(25), pincode int, state varchar(25),
college_name varchar(30),college_code varchar(10),university_name varchar(20), college_door_no varchar(10), college_street varchar(20), college_area varchar(20),
college_city varchar(20),college_district varchar(20), college_pincode int,pass_out_year bigint,
semester int, tamil bigint,english bigint,maths bigint,chemistry bigint,physics bigint,biology bigint );
-----------------------------
desc student_task4;

---------------------------
alter table student_task4 rename column name to l_name;  
alter table student_task4 add column f_name varchar(30) after id;
--------------------------

select * from student_task4;

-------------------------
insert into student_task4 values  
(1,'lenin','raj',28,'leninraj@gmail.com',9998700031,'kamala street','pattinam','karaikal','karimedu',609118,'tamilnadu',
'arul anandar college','AAC16','kamaraj university',210,'anandh nagar','karumathur','chekkanurani','madurai',609118, 2019,2,56,69,68,88,67,98);
insert into student_task4 values  
(2,'santhosh','kumar',28,'santhosh@gmail.com',9998765435,'kanan street','park of road','karaikudi','karimedu',609318,'tamilnadu',
'jammal college','JCC16','bharathi university',654,'yebi nagar','thendral','kamalpuram','trichy',609021, 2017,4,76,77,83,84,85,90),

(3,'deepan','deepa',32,'deepah@gmail.com',9843077820,'brila street','jeyapuram','sathram','trichy',609322,'tamilnadu',
'jammal college','JCC16','bharathi university',654,'yebi nagar','thendral','kamalpuram','trichy',609021, 2018,3,80,86,83,84,85,93),

(4,'sathya','sathya',25,'santhya42@gmail.com',9898755435,'main street','gandhi road','ss nallur','nagapattinam',609987,'tamilnadu',
'anna government college','AU51','anna university',111,'joker nagar','maina','kannakipuram','kovai',609998, 2014,2,76,71,83,84,58,68),

(5,'viky','vimal',22,'vikiviki@gmail.com',9887766554,'no-32 street','melapudhur','central','kovai',609777,'tamilnadu',
'anna government college','AU51','anna university',111,'joker nagar','maina','kannakipuram','kovai',609998, 2015,1,90,90,83,84,85,68),

(6,'kishore','gilbert',23,'gilbert@gmail.com',9977788845,'nerhu steet','pallavram','thambaram','chennai',609876,'tamilnadu',
'arul anandar college','AAC16','kamaraj university',210,'anandh nagar','karumathur','chekkanurani','madurai',609118, 2015,5,69,69,98,88,67,98);
-------------------------

-------------------------
alter table student_task4 add column aadhar varchar(2) after mobile;

----------------------
set sql_safe_updates=0;

update student_task4 set aadhar='y' where id=1;

update student_task4 set aadhar='y' where id=2;

update student_task4 set aadhar='n' where id=3;

update student_task4 set aadhar='y' where id=4;

update student_task4 set aadhar='n' where id=5;

update student_task4 set aadhar='y' where id=6;
------------------------

-------------------------
update student_task4 set aadhar=1 where aadhar='y';

update student_task4 set aadhar=0 where aadhar='n';
------------------------

--------------------
alter table student_task4 modify aadhar boolean;
--------------------

----------------------
select  semester,f_name,avg(tamil+english+maths+physics+chemistry+biology)/6 as avg_mark from student_task4 group by semester;
----------------------

---------------------
alter table student_task4 add column(degree varchar(10),department varchar(30));

update student_task4 set degree='B.Sc',department='Computer Science'where id=1;

update student_task4 set degree='B.Sc',department='maths'where id=2;

update student_task4 set degree='B.Sc',department='physics'where id=3;

update student_task4 set degree='B.Sc',department='chemistry'where id=4;

update student_task4 set degree='BA',department='English'where id=5;

update student_task4 set degree='B.Sc',department='chemistry'where id=6;
--------------------------

--------------------
select max(tamil) from student_task4;
select max(english) from student_task4;
select max(maths) from student_task4;
select max(chemistry) from student_task4;
select max(physics) from student_task4;
select max(biology) from student_task4;
------------------

--------------------
select min(tamil) from student_task4;
select min(english) from student_task4;
select min(maths) from student_task4;
select min(chemistry) from student_task4;
select min(physics) from student_task4;
select min(biology) from student_task4;
------------------

-------------------
select count(*) from student_task4;
-------------------

--------------------
select semester, max(tamil),max(english),max(maths),max(physics),max(chemistry),max(biology)  from student_task4  group by semester;
-------------------


------------------
select college_name,college_code,max(tamil+english+maths+physics+chemistry+biology) as over_All from student_task4 where pass_out_year=2019;
-----------------
