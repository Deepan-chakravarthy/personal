
use student_detail;
create table clg_students (id int, name varchar(20),age int, mail_id varchar(20),phone_no int, street varchar(20), area varchar(20),city varchar(20), dist varchar(20), 
pin_code int,state varchar(10), clg_name varchar(20),clg_code int, university_name varchar(20), sem int, tamil int, eng int, maths int, physics int, chem int, biology int,
clg_door_no int, clg_street varchar(20), clg_area varchar(20), clg_city varchar(20), clg_dist varchar(20), clg_pin_code int,  clg_state varchar(10), passig_year int, 
first_name varchar(10), last_name varchar(10));
desc clg_students;
drop table clg_students;

--------------
use student_detail;
create table clg_studentss (id int,first_name varchar(10), last_name varchar(10),age int, mail_id varchar(20),phone_no int, street varchar(20), area varchar(20),city varchar(20), dist varchar(20), 
pin_code int,state varchar(10), clg_name varchar(20),clg_code int, university_name varchar(20), sem int, tamil int, eng int, maths int, physics int, chem int, biology int,
clg_door_no int, clg_street varchar(20), clg_area varchar(20), clg_city varchar(20), clg_dist varchar(20), clg_pin_code int,  clg_state varchar(10), passig_year int);
select*from clg_studentss;

insert into clg_studentss values(1,'arun','kumar',22, 'arun19@gamil.com',89246711, ' 6 Hatlevegen ','Viale Dante, 75','chengam','tv',614568,'tn','svmc',129, 'periyar',1, 66,72,100,90,80,70,
123,'NationalHighway', 'Katteri','Uthangarai','krishnagiri',675849, 'Tamil Nadu', 2017);
insert into clg_studentss values(2,'arun','kumar',22, 'arun19@gamil.com',89246711, ' 6 Hatlevegen ','Viale Dante, 75','chengam','tv',614568,'tn','svmc',129, 'periyar',2, 86,70,90,97,60,77,
123,'NationalHighway', 'Katteri','Uthangarai','krishnagiri',675849, 'Tamil Nadu', 2017);
insert into clg_studentss values(3,'arun','kumar',22, 'arun19@gamil.com',89246711, ' 6 Hatlevegen ','Viale Dante, 75','chengam','tv',614568,'tn','svmc',129, 'periyar',3, 90,62,80,90,60,90,
123,'NationalHighway', 'Katteri','Uthangarai','krishnagiri',675849, 'Tamil Nadu', 2017);

insert into clg_studentss values(4,'veera','suman',20, 'veera@gamil.com',70947611, '18 King street',' bypass road','chennai','chennai',600001,'tn','iit',100, 'anna',1, 99,92,100,90,86,80,
11,' suman Nagar', 'palayam','srinagar','chennai',630001, 'Tamil Nadu', 2017);
insert into clg_studentss values(5,'veera','suman',20, 'veera@gamil.com',70947611, '18 King street',' bypass road','chennai','chennai',600001,'tn','iit',100, 'anna',2, 76,82,90,90,88,77,
11,' suman Nagar', 'palayam','srinagar','chennai',630001, 'Tamil Nadu', 2017);
insert into clg_studentss values(6,'veera','suman',20, 'veera@gamil.com',70947611, '18 King street',' bypass road','chennai','chennai',600001,'tn','iit',100, 'anna',3, 75,50,80,60,88,80,
11,' suman Nagar', 'palayam','srinagar','chennai',630001, 'Tamil Nadu', 2017);

insert into clg_studentss values(7,'akash','kumar',20, 'mayil9@gamil.com',8926711, '29 King Way','pillayar kovil','arcot','ranipet',672508,'tn','amc',127, 'periyar',1, 96,52,70,80,56,60,
10,'Dr.M.G.R.Nagar', 'polur','krishnagiri','hosur',635101, 'Tamil Nadu', 2017);
insert into clg_studentss values(8,'akash','kumar',20, 'mayil9@gamil.com',8926711, '29 King Way','pillayar kovil','arcot','ranipet',672508,'tn','amc',127, 'periyar',2, 80,88,60,50,80,75,
10,'Dr.M.G.R.Nagar', 'polur','krishnagiri','hosur',635101, 'Tamil Nadu', 2017);
insert into clg_studentss values(9,'akash','kumar',20, 'mayil9@gamil.com',8926711, '29 King Way','pillayar kovil','arcot','ranipet',672508,'tn','amc',127, 'periyar',3, 70,60,70,80,56,95,
10,'Dr.M.G.R.Nagar', 'polur','krishnagiri','hosur',635101, 'Tamil Nadu', 2017);

alter table clg_studentss add column aadhar varchar(5);
update clg_studentss set aadhar='yes' where id in(1,2,3,7,8,9);
set sql_safe_updates=0;
update clg_studentss set aadhar='yes' where id in(4,5,6);

update clg_studentss set aadhar='1' where id in(1,2,3,7,8,9);
update clg_studentss set aadhar='0' where id in(4,5,6);

alter table clg_studentss modify aadhar boolean;

select first_name, sem,max(tamil+eng+maths+physics+chem+biology)/6 from clg_studentss group by sem;

alter table clg_studentss add column degree varchar(5);
alter table clg_studentss add column dept varchar(10);

update clg_studentss set degree='B.Sc';

update  clg_studentss set dept= 'phy' where id in(1,2,3);
update  clg_studentss set dept= 'che' where id in(4,5,6);
update  clg_studentss set dept= 'bio' where id in(7,8,9);

select*from clg_studentss;

select clg_name,first_name, sem,max(tamil+eng+maths+physics+chem+biology)/6 as 1stmark from clg_studentss;
select dept,first_name, sem,max(tamil+eng+maths+physics+chem+biology)/6 as 1stmark from clg_studentss group by first_name;

select first_name,sem,max(tamil+eng+maths+physics+chem+biology)/6 as 1stmark from clg_studentss group by sem;

