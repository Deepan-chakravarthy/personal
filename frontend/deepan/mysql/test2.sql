/*
 create student table
 (id,name,age,email,mobile,street,area,city,district,pincode,state)
 (college name,college code,university name, college door no,college street,collge city,college district,college pincode, passed out year)
 (semester,tamil,english,maths,physics,chemistry,biology)
 
 1. add first_name varchar(30),last_name varchar(20).
 2.add a column as aadhaar (varchar) and add value
 3.change the data type as boolean for aadhaar.
 4. i want particular students semester wise average mark.
 5.add a column degree and department and also update values.
 6.semester wise and department wise maximum mark.
 7.overall which college is the first mark in particular year.
 
 */
 
 use training1;
 
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
 
create table semester1(
 id int auto_increment primary key,
 tamil int,
 english int,
 maths int,
 physics int,
 chemistry int,
 biology int
);
 
 create table semester2(
 id int auto_increment primary key,
 tamil int,
 english int,
 maths int,
 physics int,
 chemistry int,
 biology int
);
 
 create table semester3(
 id int auto_increment primary key,
 tamil int,
 english int,
 maths int,
 physics int,
 chemistry int,
 biology int
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
 passed_out_year year,
 college_code int,
 semester1 int,
 semester2 int,
 semester3 int,
 constraint pk_college foreign key (college_code) references college(college_code)
 on delete cascade,
 constraint semester1 foreign key (semester1) references semester1(id)
 on delete set null,
 constraint semester2 foreign key (semester2) references semester2(id)
 on delete set null,
 constraint semester3 foreign key (semester3) references semester3(id)
 on delete set null
 )auto_increment=100;
 
 desc college;
 desc semester2;
 desc students;
 drop table semester2;
 drop table students;
 
 insert into college (college_name, university_name, college_door_no, college_street, collge_city, college_district, college_pincode) values
 ('bishop heber', 'bharathidasan', 001, 'abcd street', 'xyz city', 'trichy', 620001),
 ('national', 'bharathidasan', 007, 'abcd street', 'xyz city', 'madurai', 620028),
 ('jamal', 'bharathidasan', 010, 'abcd street', 'xyz city', 'chennai', 620805);
 
 insert into semester1 (tamil, english, maths, physics, chemistry, biology) values
 (78, 88, 20, 80, 73, 44),
 (88, 70, 80, 71, 66, 100),
 (10, 90, 100, 98, 89, 100),
 (67, 45, 21, 67, 06, 76),
 (99, 24, 67, 75, 65, 43);
 
 insert into semester2 (tamil, english, maths, physics, chemistry, biology) values
 (88, 70, 80, 71, 66, 100),
 (10, 90, 100, 98, 89, 100),
 (67, 45, 21, 67, 06, 76),
 (99, 24, 67, 75, 65, 43),
 (78, 88, 20, 80, 73, 44);
 
 insert into semester3 (tamil, english, maths, physics, chemistry, biology) values
 (78, 88, 20, 80, 73, 44),
 (88, 70, 80, 71, 66, 100),
 (10, 90, 100, 98, 89, 100),
 (67, 45, 21, 67, 06, 76),
 (99, 24, 67, 75, 65, 43);
 
 insert into students (name, age, mobile, email, door_no, street, area , city, district , pincode, state, passed_out_year, college_code, semester1, semester2, semester3) values
  ('akash', 17, 1245678901, 'akash@gmailcom', 01, 'bheema nagar', 'woraiyur', 'trichy', 'trichy', 620003, 'tamil nadu',2020,1000,1,1,1),
  ('niranjan',14,3456789012,'niranjan@gmailcom',88,'srinivasan nagar','thillainagar','trichy','trichy',620089,'tamil nadu',2019,1002,2,2,2),
  ('logesh',19,4567890123,'logesh@gmailcom',04,'shanmuga nagar','vayalur road','trichy','trichy',620017,'tamil nadu',2022,1000,3,3,3),
  ('sandeep',17,6789012345,'sandeep@gmailcom',45,'vasan nagar','thillai nagar','trichy','trichy',620005,'tamil nadu',2015,1001,4,4,4),
  ('guru',19,7890123456,'guru@gmailcom',123,'kumaran nagar','woraiyur','trichy','trichy',620001,'tamil nadu',2018,1002,5,5,5);
  
  
 
 select * from college;
 select * from semester1;
 select * from semester2;
 select * from semester3;
 select * from students;
 
 