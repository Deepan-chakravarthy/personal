use training2;


create table college(
 college_code int auto_increment primary key ,
 college_name varchar(20),
 university_name varchar(20), 
 college_door_no int,
 college_street varchar(20),
 collge_city varchar(20),
 college_district varchar(20),
 college_pincode int
)auto_increment=1001;

create table bus_driver(
 driver_id int primary key auto_increment,
 driver_name varchar(20),
 shift varchar(20)
 )auto_increment=11111;
 
create table bus_details(
bus_sno int auto_increment primary key,
 bus_no int,
 bus_type varchar(20),
 bus_route varchar(100),
 driver_id int,
 constraint FK_driver_id foreign key(driver_id) references bus_driver(driver_id)
 );
 
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
 college_code int,
 bus_sno int,
 constraint fk_college_code foreign key(college_code) references college(college_code),
 constraint fk_bus_no foreign key(bus_sno) references bus_details(bus_sno)
 )auto_increment=101;
 
 
  insert into college (college_name, university_name, college_door_no, college_street, collge_city, college_district, college_pincode) values
 ('bishop heber', 'bharathidasan', 001, 'abcd street', 'xyz city', 'trichy', 620001),
 ('national', 'bharathidasan', 007, 'abcd street', 'xyz city', 'madurai', 620028),
 ('jamal', 'bharathidasan', 010, 'abcd street', 'xyz city', 'chennai', 620805);
 
 select * from college;
 
 insert into bus_driver(driver_name, shift) values 
 ('babu','day'),
 ('ram','day'),
 ('pandi','night'),
 ('santhosh','day'),
 ('guru','night'),
 ('vicky','night'),
 ('sathish','day'),
 ('sathya','night'),
 ('arun','night'),
 ('syed','day');
 
 select * from bus_driver;
 drop table bus_details;
 
 
 insert into bus_details(bus_no, bus_type, bus_route, driver_id)  values
 (33,'govt','chennai to madurai',11111),
 (33,'govt','chennai to madurai',11112),
 (55,'prvt','chennai to madurai',11113),
 (55,'prvt','chennai to madurai',11114),
 (77,'govt','chennai to madurai',11115),
 (77,'govt','chennai to madurai',11116),
 (22,'govt','chennai to madurai',11117),
 (22,'govt','chennai to madurai',11118),
 (99,'prvt','chennai to madurai',11119),
 (99,'prvt','chennai to madurai',11120);
 
 select * from bus_details;
 
  insert into students(name, age, mobile, email, door_no, street, area, city, district, pincode, state, college_code,bus_sno) values
  ('akash', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,1),
  ('bala', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,3),
  ('deepan', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,5),
  ('akshay', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,1),
  ('sandeep', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,3),
  ('vikash', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,5),
  ('lavan', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,2),
  ('logesh', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,4),
  ('muruthi', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,9),
  ('shankar', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,10),
  ('palani', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,10),
  ('alan', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,5),
  ('sathya', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,8),
  ('sathish', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,9),
  ('gowtham', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,6),
  ('dravid', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,4),
  ('balaji', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,10),
  ('ram', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,3),
  ('vijay', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,6),
  ('prabhu', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,1),
  ('sathish', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,9),
  ('gowtham', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,6),
  ('dravid', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,4),
  ('balaji', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,10),
  ('ram', 20, 1245678901, 'bbb@gmailcom', 01, 'bheema nagar', 'woraiyur', 'madurai', 'madurai', 620017, 'tamil nadu',1002,3),
  ('vijay', 17, 1245678901, 'ccc@gmailcom', 01, 'bheema nagar', 'woraiyur', 'chennai', 'chennai', 620003, 'tamil nadu',1003,6),
  ('prabhu', 19, 1245678901, 'aaa@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',1001,10);
  
  select * from students;
  drop table students;
  
-- join two table (students and college)--

  select name,age from (select name,age from students
  inner join college on
  college.college_code=students.college_code) as t1 where age=(select max(age) from  (select * from students
  inner join college on
  college.college_code=students.college_code)as t2);
  
  -- join three tables (students,college and bus details)-- 
  
  select * from students
  inner join college on
  college.college_code=students.college_code
  inner join bus_details on
  bus_details.bus_sno=students.bus_sno;
  
  -- join four tables (students,college,bus details and bus driver--
  
  select * from students
  inner join college on
  college.college_code=students.college_code
  inner join bus_details on
  bus_details.bus_sno=students.bus_sno
  inner join bus_driver on
  bus_driver.driver_id=bus_details.driver_id order by id;
  
  -- how many students travelling in which bus  --- 
  
  select bus_details.bus_type,bus_details.bus_no, count(id) as no_of_students from students
  inner join bus_details on
  bus_details.bus_sno=students.bus_sno group by bus_details.bus_no;
  
  --  how many students travelling in which bus type ---
  
  select bus_details.bus_type, count(bus_type) from students
  inner join bus_details on
  bus_details.bus_sno=students.bus_sno group by bus_details.bus_type;
  

   -- max no of students in bus----
   
   select bus_type,bus_no, max(no_of_students) as min from (select bus_details.bus_type,bus_details.bus_no, count(id) as no_of_students from students
   inner join bus_details on
   bus_details.bus_sno=students.bus_sno group by bus_details.bus_no) as test1;
  
  
  -- min no of students in bus----
   
  
  select bus_type,bus_no,no_of_students from (select bus_type,bus_no, min(no_of_students) as min from (select bus_details.bus_type,bus_details.bus_no, count(id) as no_of_students from students
  inner join bus_details on
  bus_details.bus_sno=students.bus_sno group by bus_details.bus_no) as test1) as test2;
  
  
  select * from bus_details;
  select * from bus_driver;
  select * from college;
  select * from students;
  
  select * from students group by name having name like 'a%';
