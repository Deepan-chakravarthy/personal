create database test_1;
use test_1;
create table college(
 college_code int auto_increment primary key ,
 college_name varchar(20),
 university_name varchar(20), 
 college_door_no int,
 college_street varchar(20),
 collge_city varchar(20),
 college_district varchar(20),
 college_pincode int
)auto_increment=1000;
insert into college(college_name, university_name,college_door_no,college_street, collge_city ,college_district,college_pincode)values
('vhooresh','anna_uni',345,'flower_street','polur','chennai',4567),
('shc_college','thrivallu_uni',332,'old street','chetpet','tv malai',7687),
('super_college','anna_uni',567,'new_street','arni','vellore',6578),
('chennaiclg','metras_uni',456,'semar_street','kk nagar','chennai',3453);

select * from college;


create table bus_driver(driver_id int auto_increment primary key,
driver_name varchar(20),
shift varchar(20))auto_increment=10;
insert into bus_driver(driver_name,shift)values('deepan','day'),
('sandy','day'),('suman','night'),('sure','day'),('kevin','night'),
('surya','night'),('lenin','day'),('allan','night'),('gaby','day'),
('gopal','night');
select * from bus_driver;

 create table bus_details
 (bus_sno int  auto_increment primary key,
 bus_no int, 
 bus_type varchar(20),
 bus_route varchar(30),
 driver_id int , constraint fk_driver_id foreign key(driver_id) references bus_driver(driver_id));
 
 insert into bus_details(bus_no,bus_type,bus_route,driver_id) values(324,'private','polur to chennai',10),
 (456,'public','polur to ooty',11),
 (654,'private','kerala to mathurai',12),
 (897,'public','pune to dehli',13),
 (234,'private',' sengam to chennai',14),
 (987,'public','mathurai to chennai',16),
 (654,'private','goa to chennai',17),
 (784,'private','vellore to chennai',18),
 (394,'public','selam to chennai',19);
 
select * from bus_details;
drop table bus_details;


create table students(
 id int auto_increment primary key,
 name varchar(20),
 age int,
 email varchar(25),
 mobile bigint,
 door_no int,
 street varchar(20),
 area varchar(20),
 city varchar(20),
 district varchar(20),
 pincode int,
 state varchar(20),
 college_code int, constraint ck_college_code foreign key(college_code) references college(college_code),
 bus_sno int,  constraint sk_bus_no foreign key(bus_sno) references bus_details(bus_sno)) auto_increment=201
 ;
 insert into students(name, age, mobile, email, door_no, street, area, city, district, pincode, state, college_code,bus_sno) values
  ('suresh', 19, 1245678901, 'sure@gmailcom', 01, 'kk nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,67),
  ('bala', 20, 1245678901, 'bala@gmailcom', 01, 'ak  nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,68),
  ('deepan', 17, 1245678901, 'deepa@gmailcom', 01, 'kgf nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,69),
  ('akshay', 19, 1245678901, 'saja@gmailcom', 01, 'old  nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,70),
  ('sandeep', 20, 1245678901, 'bbb@gmailcom', 01, 'new nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,71),
  ('vikash', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,72),
  ('lavan', 19, 1245678901, 'aaa@gmailcom', 01, 'flower nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,73),
  ('logesh', 19, 1245678901, 'aaa@gmailcom', 01, 'banana nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,74),
  ('muruthi', 19, 1245678901, 'aaa@gmailcom', 01, 'apple nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,75),
  ('shankar', 20, 1245678901, 'bbb@gmailcom', 01, 'orange nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,76),
  ('palani', 17, 1245678901, 'ccc@gmailcom', 01, 'briyani nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,77),
  ('alan', 19, 1245678901, 'aaa@gmailcom', 01, 'rice nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,78),
  ('sathya', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,79),
  ('sathish', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,80),
  ('gowtham', 17, 1245678901, 'baby@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,81),
  ('dravid', 20, 1245678901, 'papa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,82),
  ('balaji', 17, 1245678901, 'pap@gmailcom', 01, ' nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,83),
  ('ram', 20, 1245678901, 'dravi@gmailcom', 01, 'chennai nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,84),
  ('vijay', 17, 1245678901, 'vijay@gmailcom', 01, 'start nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,85),
  ('prabhu', 19, 1245678901, 'pra@gmailcom', 01, 'sun nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,86);
  select * from students;

SELECT *
  FROM college
  INNER JOIN bus_driver
  ON college_code = driver_id
  INNER JOIN bus_details
  ON driver_id =bus_sno 
  inner join students;
  
  select * from college;
  select * from bus_details;
  select * from bus_driver;
  select *  from students;
  
  
  select * from students inner join college on college.college_code=students.college_code inner join bus_details on 
  bus_details.bus_sno=students.bus_sno inner join bus_driver on bus_driver.driver_id=bus_details.driver_id; 
  

  
  select bus_details.bus_type,bus_details.bus_no,count(id) from students
  inner join bus_details on bus_details.bus_sno=students.bus_sno group by bus_details.bus_no;
 
 
select bus_details.bus_type,count(bus_type) from students
inner join bus_details on  bus_details.bus_sno=students.bus_sno group by bus_details.bus_type;
  
select   bus_type,bus_sno ,min(bus_type)from bus_details inner join students  on bus_details.bus_type=students.id where count(id) group by bus_type,bus_sno;
select  max(bus_type)from bus_details inner join students;

select bus_no,name from students
inner join driver_detail on students.bus_no=driver_detail.bus_type where min(bus_type) and max(bus_type);




    
    
  

-- drop table students;
 -- drop table bus_details;
 
 select count(bus_type) and count(bus_no);
 
 