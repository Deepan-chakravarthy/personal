create schema question1;
 
 drop schema question1;
 use question1;
 
create table person(
  id int auto_increment primary key,
  name varchar(20),
  age int,
  fname varchar(20),
  lname varchar(20));
  
create table school(
  id int auto_increment primary key,
  name varchar(20),
  code int,
  tel_no bigint
  );
  
create table college(
  id int auto_increment primary key,
  name varchar(20),
  code int,
  tel_no bigint
  );
 
create table address(
  id int auto_increment primary key,
  doorno int,
  street varchar(20),
  area varchar(20),
  city varchar(20),
  district varchar(20),
  state varchar(20),
  pincode int,
  country varchar(20));
  
create table mobile(
  id int auto_increment primary key,
  num bigint,
  operator varchar(10));
   
create table owner(
  id int auto_increment primary key,
  fromm date,
  too date,
  school_id int,
  college_id int,
  person_id int,
  foreign key (college_id) references college(id),
  foreign key (school_id) references school(id),
  foreign key (person_id) references person(id));
  
create table education(
  id int auto_increment primary key,
  year_of_passing_school year,
  year_of_passing_college year,
  school_id int,
  college_id int,
  person_id int,
  foreign key (college_id) references college(id),
  foreign key (school_id) references school(id),
  foreign key (person_id) references person(id));
    

   
create table contact(
 id int auto_increment primary key,
 email varchar(25),
 mobile_id int,
 person_id int,
 foreign key(mobile_id) references mobile(id),
 foreign key (person_id) references person(id));
 
create table address_mapping(
 id int auto_increment primary key,
 person_id int,
 address_id int,
 school_id int,
 college_id int,
 foreign key(person_id) references person(id),
 foreign key (address_id) references address(id),
 foreign key(school_id) references school(id),
 foreign key(college_id) references college(id));
  
 drop table employee; 
 
 insert into school (name,code,tel_no) values 
 ("abc",123,1234567),
 ("xyz",098,9876543),
 ("mno",567,5678901);
 
 insert into college (name,code,tel_no) values 
 ("qwe",1230,12345678),
 ("asd",0980,98765439),
 ("zxc",5670,56789010);
 
 insert into person (name,age,email,fname,lname) values
 ("person1tiger",30,"person1@gmail.com","person1","tiger",1,1),
 ("person2tiger",33,"person2@gmail.com","person2","tiger",2,2),
 ("person3tiger1",35,"person3@gmail.com","person3","tiger1",3,3),
 ("person2tiger2",30,"person4@gmail.com","person2","tiger2",2,1),
 ("person5tiger1",39,"person5@gmail.com","person5","tiger1",1,3),
 ("person4tiger",33,"person6@gmail.com","person4","tiger",1,1),
 ("person8tiger5",37,"person7@gmail.com","person8","tiger5",2,null),
 ("person0tiger",33,"person8@gmail.com","person0","tiger",null,null),
 ("person7tiger2",36,"person9@gmail.com","person7","tiger2",1,null),
 ("person3tiger0",38,"person10@gmail.com","person4","tiger0",1,3);
 

 

 
 
  