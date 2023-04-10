create table college(
 college_code int auto_increment primary key ,
 college_name varchar(20),
 university_name varchar(20), 
 college_door_no int,
 college_street varchar(20),
 collge_city varchar(20),
 college_district varchar(20),
 college_pincode int,
 passed_out_year year
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
 college_code int,
 semester1 int,
 semester2 int,
 semester3 int,
 constraint pk_college foreign key (college_code) references college(college_code),
 constraint semester1 foreign key (id) references semester1(id),
 constraint semester2 foreign key (id) references semester2(id),
 constraint semester3 foreign key (id) references semester3(id)
 )auto_increment=100;