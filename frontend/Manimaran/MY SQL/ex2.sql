create schema col;
use col;
create table student(id varchar(5),name varchar(30), age varchar(5), emailid varchar(50), mobilenumber varchar(15), 
street varchar(20), areaa varchar(20), city varchar(20), district varchar(20), pincode varchar(10), 
state varchar(20), CollageName varchar(50), CollageCode varchar(5), UniversityName varchar(20), 
Semester int,tamil int,english int,maths int,Physics int, chemistry int, biology int, 
CollageDoorNo int, collageStreet varchar(20), collageArea varchar(20), collageCity varchar(30),
collageDistrict varchar(20),CollagePincode varchar(10), CollageState varchar(20),YearOfPassedOut varchar(5),firstname varchar(20),lastname varchar(20),primary key (id));

insert into  student(id,name,age,emailid,mobilenumber,street,areaa,city,district,pincode,state,CollageName,CollageCode,UniversityName,Semester,tamil,english,maths,Physics,chemistry,
biology,CollageDoorNo,collageStreet,collageArea,collageCity,collageDistrict,CollagePincode,CollageState,YearOfPassedOut,firstname,lastname) values
('1','Manimaran Ravichandran','10','maranravi2000@gmail.com', '8610200342' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','sastra','01','sastra university',1,50,60,40,70,89,98,245,'tirumalai','vallam','thnjai','thanjai','610001','tamilnadu',2020,'Manimaran','Ravichandran'),
('2','rampraveen durai','20','ram2020@gmail.com', '8610200343' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','Bishop','02','Bharathidasan',2,52,40,30,60,58,95,543,'vilarstreet','meagamaial','trichy','trichy','610002','tamilnadu',2020,'rampraveen','durai'),
('3','ramados vikram','30','ramados00@gmail.com', '1234567890' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','sastra','01','sastra university',1,95,56,90,89,91,86,245,'tirumalai','vallam','thanjai','thnjai','610001','tamilnadu',2020,'ramados','vikram'),
('4','karun kutty','34','karunkutty0@gmail.com', '4567891239' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','Bishop','02','Bharathidasan',2,98,89,98,89,89,85,543,'vilar street','meagamaial','trichy','trichy','610002','tamilnadu',2020,'karun','kutty'),
('5','vignesh ramani','60','vignesh00@gmail.com', '7894561230' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','jamal','03','Bharathiyar',3,54,89,85,78,72,86,345,'10th cross','vocnagar','madurai','madurai','610003','tamilnadu',2020,'vignesh','ramani'),
('6','dinesh kumar','35','dinesh3030@gmail.com', '8529637412' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','sastra','01','sastra university',1,65,89,68,89,89,56,245,'tirumalai','vallam','thanjai','thnjai','610001','tamilnadu',2020,'dinesh','kumar'),
('7','sivakarthik balu','65','sivakarthik30@gmail.com', '8956232154' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','jamal','03','Bharathiyar',3,89,54,30,25,85,87,345,'10th cross','vocnagar','madurai','madurai','610003','tamilnadu',2020,'sivakarthik','balu'),
('8','prakashram muthu','89','prakashram2@gmail.com', '8957896359' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','Bishop','02','Bharathidasan',2,74,90,45,78,77,52,543,'vilar street','meagamaial','trichy','trichy','610002','tamilnadu',2020,'prakashram','muthu'),
('9','vijaysai dharma','56','saivijay30@gmail.com', '7415263987' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','sastra','01','sastra university',1,52,80,67,89,88,89,245,'tirumalai','vallam','thanjai','thnjai','610001','tamilnadu',2020,'vijaysai','dharma'),
('10','naveenraj paneer','45','naveenraj25@gmail.com', '789854796' ,'mealakadu','thalayamangalam','mng','thanjavur','614016','tamilnadu','jamal','03','Bharathiyar',3,58,89,60,30,80,78,345,'10th cross','vocnagar','madurai','madurai','610003','tamilnadu',2020,'naveenraj','paneer');
drop table col.company;
create table company(id int , name varchar(10) , founded_yr int, company_id int ,foreign key (id) references student(id));
insert into company(id,name,founded_yr,company_id) values(1,'Advento',2007,1);
insert into company(id,name,founded_yr,company_id) values(2,'Cts',158,2);
insert into company(id,name,founded_yr,company_id) values(3,'zoho',1980,3);
insert into company(id,name,founded_yr,company_id) values(4,'TCS',1960,4);
insert into company(id,name,founded_yr,company_id) values(5,'Infosys',2000,5);
insert into company(id,name,founded_yr,company_id) values(6,'Accenture',1965,6);
insert into company(id,name,founded_yr,company_id) values(7,'Speridean',1975,7);

select s1.name,c1.name,c1.founded_yr from student s1 inner join company c1 on c1.id=s1.id;

select e1.name,m1.numb from employees e1 inner join mobile m1 on e1.eid=m1.eid;
select s1.name,c1.founded_yr,c1.name from student s1  inner join company c1 on c1.id=s1.id left outer join company m1 on s1.id=c1.id;
select e1.name,m1.numb,c1.name from employees e1 inner join mobile m1 on m1.numb is not null and e1.eid=m1.eid right outer join company c1 on c1.id=e1.id;
select e1.name,m1.operator,network_speed from employees e1 inner join mobile m1 on e1.eid=m1.eid;

alter table student modify id int primary key;
alter table company add constraint foreign key(id)  references student(id); 

alter table col.student add column aadhar varchar(20) after age;
update student set aadhar='yes' where id in(1,3,5,7,9);
update student set aadhar='no' where id in(2,4,6,8,10);

update student set aadhar=1 where aadhar='yes';
update student set aadhar=0 where aadhar='No';
alter table student modify aadhar boolean;

alter table col.student add column degree varchar(20) after UniversityName;
update student set Degree='B.COM' where CollageCode=03;

alter table col.student add column Department varchar(20) after Degree;
update student set Department='ComputerScience' where Degree='BCA';
update student set Department='Commerce' where Degree='BBA';
update student set Department='ComputerCommerce' where Degree='B.COM';

select  name,department, avg(tamil) as avg_mark from student group by name; 

select name,avg((Tamil+English+maths+physics+chemistry+Biology)/6) as sem_avgmark from col.student where id='1';
select name,avg((Tamil+English+maths+physics+chemistry+Biology)/6) as avrage from col.student where id='5';
select name,semester,department,max(Tamil+English+maths+physics+chemistry+Biology) as average from col.student group by semester order by name desc;
select name,semester,department, max(Tamil+English+maths+physics+chemistry+Biology) as average from col.student group by department order by name desc;
select collagename,YearOfPassedOut, max(Tamil+English+maths+physics+chemistry+Biology) as 1st_mark from col.student where YearOfPassedOut=2020;
select name,semester,department,min(Tamil+English+maths+physics+chemistry+Biology) as average from col.student group by semester order by name desc;
select name,semester,department,max(Tamil+English+maths+physics+chemistry+Biology) as average from col.student order by name desc;
select name,semester,department,(Tamil+English+maths+physics+chemistry+Biology) as average from col.student order by name desc;
select name,age, count(age)  from student group by age;
set sql_safe_updates=0;
select * from col.student;
desc student;

select e1.name,m1.numb from employees e1 inner join mobile m1 on e1.eid=m1.eid;

