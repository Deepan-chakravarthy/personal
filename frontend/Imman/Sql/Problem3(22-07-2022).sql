create schema problem3;
use problem3;
create table college(id int not null auto_increment , name varchar(20) not null , age int not null , email varchar(50) not null , mobileno int not null ,
 street varchar(20) not null,area varchar(20) not null, city varchar(20) not null, district varchar(20) not null,state varchar(20) not null,
 pincode int not null, college_name varchar(50) not null,college_code int not null, university_name varchar(30) not null,
 semester1 int not null,semester2 int not null,semester3 int not null,semester4 int not null,English int not null, 
 Tamil int not null,Maths int not null,Physics int not null, Chemistry int not null, Biology int not null,
 college_doorno varchar(20) not null, college_street varchar(20) not null, college_area varchar(20) not null,college_city varchar(20) not null,
 college_district varchar(20) not null,college_state varchar(20) not null,college_pincode int not null, YOP int not null ,
 first_name varchar(30) not null,last_name varchar(20) not null,primary key(id));
 select * from college;
 insert into college(name,age,email,mobileno,street,area,city,district,state,pincode,college_name,college_code,university_name,semester1,semester2,semester3,semester4,English,Tamil,Maths,Physics,Chemistry,Biology,
 college_doorno,college_street,college_area,college_city,college_district,college_state,college_pincode,YOP,first_name,last_name) values
 ('Ram',27,'ram@g.com','789456123','kannan street','vallam','Thanjavur','Thanjavur','Tamilnadu',613001,'Periyarmaniammai',123,'Bharathidhasan university',8,7,6,5,90,80,92,65,50,88,945,'therku street','kotayam','Trichy','Trichy','Tamilnadu',574321,2020,'Ram','Kumar'),
 ('Tom',26,'tom@g.com','879456120','kumaran street','vkm','pudukottai','Thanjavur','Tamilnadu',613461,'denmark',124,'denmark university',5,6,7,7,40,60,62,95,80,88,545,'north street','kotayam','hosur','hosur','Tamilnadu',500021,2023,'Tom','t'),
 ('sam',28,'sam@g.com','784951230','karan street','dfh','chennai','chennai','Tamilnadu',456921,'Pachaiyappan',420,'Bharathidhasan university',5,5,6,7,97,85,66,89,77,88,645,'therku street','kotayam','chennai','chennai','Tamilnadu',564321,2021,'sam','K'),
 ('mohan',22,'mohan@g.com','789165230','nethaji street','loi','bangalore','bangalore','karnataka',513001,'SRM',846,'SRM university',8,9,9,7,90,70,92,65,50,88,745,'therku street','northmid','cuddalore','cuddalore','Tamilnadu',564321,2021,'mohan','Kumar'),
 ('jai',21,'jai@g.com','789456120','master street','sgj','madurai','madurai','Tamilnadu',213001,'Prist',978,'Prist university',8,8,8,5,60,80,92,65,57,88,845,'East street','periyapalaiyam','tiruppur','tiruppur','Tamilnadu',564321,2021,'Jai','S'),
 ('jemi',20,'jemi@g.com','789450316','mannai street','rfb','vellore','vellore','Tamilnadu',617531,'Periyarmaniammai',123,'Bharathidhasan university',5,7,5,5,90,80,88,65,96,88,945,'therku street','kotayam','Trichy','Trichy','Tamilnadu',574321,2020,'Jemi','J'),
 ('varun',25,'varun@g.com','598761230','radha street','wjz','udupi','udupi','karnataka',513054,'St joseph',723,'Bharathidhasan university',4,7,9,5,90,80,92,90,50,88,585,'therku street','kotayam','kerla','kerla','Tamilnadu',580321,2021,'chandra','varun'),
 ('priyanka',24,'priyanka@g.com','781654230','mission street','bsf','coimbatore','coimbatore','Tamilnadu',629101,'bishop',213,'Bharathidhasan university',8,8,8,8,90,81,92,65,50,88,976,'West street','vanakara','erode','erode','Tamilnadu',164321,2022,'priyanka','s'),
 ('saranya',31,'saranya@g.com','789031407','muslim street','vil','salem','salem','Tamilnadu',618456,'bishop',213,'Bharathidhasan university',7,7,6,6,90,80,92,85,50,88,976,'West street','vanakara','erode','erode','Tamilnadu',164321,2021,'saranya','n'),
 ('imman',23,'imman@g.com','780056230','periyar street','srinivasapuram','Thanjavur','Thanjavur','Tamilnadu',613009,'Prist',978,'Prist university',9,9,8,9,90,80,73,65,50,86,845,'East street','periyapalaiyam','tiruppur','tiruppur','Tamilnadu',564321,2021,'Imman','A');
 alter table college add aadhar varchar(20);
 update college set aadhar='Yes'where id=1;
 update college set aadhar='Yes'where id=2;
 update college set aadhar='No'where id=3;
 update college set aadhar='Yes'where id=4;
 update college set aadhar='No'where id=5;
 update college set aadhar='Yes'where id=6;
 update college set aadhar='No'where id=7;
 update college set aadhar='No'where id=8;
 update college set aadhar='Yes'where id=9;
 update college set aadhar='Yes'where id=10;
 select * from college;
update college set aadhar=1 where aadhar='Yes';
update college set aadhar=0 where aadhar='No';
select * from college;
select name,round(avg((semester1+semester2+semester3+semester4)/4),0) as Semester_Avg from college where id=2;
alter table college add column degree varchar(20),add department varchar(20);
select * from college;
 update college set degree='BCA'where id=1;
 update college set degree='MCA'where id=2;
 update college set degree='BCA'where id=3;
 update college set degree='BCA'where id=4;
 update college set degree='MCA'where id=5;
 update college set degree='BCA'where id=6;
 update college set degree='BTech'where id=7;
 update college set degree='MBA'where id=8;
 update college set degree='BSC'where id=9;
 update college set degree='MCA'where id=10;
 update college set YOP='2023'where id=6;
 update college set semester1='9'where id=6;
 update college set department='Computer Apllication'where id=1;
 update college set department='Computer Apllication'where id=2;
 update college set department='Computer Apllication'where id=3;
 update college set department='Computer Apllication'where id=4;
 update college set department='Computer Apllication'where id=5;
 update college set department='Computer Apllication'where id=6;
 update college set department='Computer Apllication'where id=7;
 update college set department='Business 'where id=8;
 update college set department='Physics'where id=9;
 update college set department='Computer Apllication'where id=10;
 select * from college;
 create view ct as
 select id,name,college_name,semester1,semester2,semester3,semester4,round(avg((semester1+semester2+semester3+semester4)/4),0) as Semester_Avg,degree,department,YOP from ct group by name;
 -- create view cd as
 -- select id,name,degree,college_name,department,YOP,max(Semester_Avg)as Clg_max from ct group by id;
-- select id,name,degree,college_name,department,YOP,Clg_max from cd where Clg_max =(select max(Clg_max) from cd);
-- select id,name,college_name,Semester_Avg,degree,YOP from (select id,name,college_name,Semester_Avg,degree,YOP from (select id,name,college_name,Semester_Avg,degree,YOP from (select id,name,college_name,semester1,semester2,semester3,semester4,round(avg((semester1+semester2+semester3+semester4)/4),0) as Semester_Avg,degree,department,YOP from ct group by name)as t1)as t2 where YOP='2021')as t3 where Semester_Avg=(select max(Semester_Avg) from ct);

-- select id,name,college_name,Semester_Avg,degree,YOP from (select id,name,college_name,Semester_Avg,degree,YOP from (select id,name,college_name,Semester_Avg,degree,YOP from (select id,name,college_name,semester1,semester2,semester3,semester4,round(avg((semester1+semester2+semester3+semester4)/4),0) as Semester_Avg,degree,department,YOP from ct group by name)as t1)as t2)as t3 where YOP='2021' and Semester_Avg=(select max(Semester_Avg) from ct);


create view ct2 as
select id,name,college_name,Semester_Avg,degree,YOP from (select id,name,college_name,Semester_Avg,degree,YOP from (select id,name,college_name,Semester_Avg,degree,YOP from (select id,name,college_name,semester1,semester2,semester3,semester4,round(avg((semester1+semester2+semester3+semester4)/4),0) as Semester_Avg,degree,department,YOP from ct group by name)as t1)as t2)as t3 where YOP='2021';
select id,name,college_name,Semester_Avg,degree,YOP from ct2 where Semester_Avg=(select max(Semester_Avg) from ct2);
select id,name,college_name,Semester_Avg,degree,YOP from ct2 where Semester_Avg=(select min(Semester_Avg) from ct2);
drop view ct2;