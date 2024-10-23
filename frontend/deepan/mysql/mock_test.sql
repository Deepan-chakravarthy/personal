/*
hotel table(id,name,mobile,address,owner,email,year)
food items(id,name,type)
customer(id,name,age,mobile,fname,lname)
mapping(id,hotelid,fooditems,quantity,price)

1.customer in a year which hotel he has spent more.
2.in the entire which he like more.
3.what is his spending projection on month vice and year vice.
4.people interest on food items by year vice.
5. what is the spending of the customer hotel vice and year vice.

*/


select customer_id,food_id,count(food_id) from transaction as t
join hotel_items_map as hi on
t.map_id=hi.id group by(customer_id);


---------------------------------
select * from hotel;
select * from food_items;
select * from customer;
select * from hotel_items_map;
select * from transaction;

------------------------------------

create schema hotel;
use hotel;
drop schema hotel;

create table hotel(
 id int primary key auto_increment,
 name varchar(20),
 mobile bigint,
 location varchar(15),
 owner varchar(20),
 email varchar(25),
 founded_year year
 );


create table customer(
 id int auto_increment primary key,
 name varchar(20),
 age int,
 mobile bigint,
 fname varchar(20),
 lname varchar(20)
 );
 
 
 create table food_items(
  id int auto_increment primary key,
  name varchar(20),
  type varchar(10)
  );
  
 create table hotel_items_map(
  id int auto_increment primary key,
  hotel_id int,
  food_id int,
  quantity int,
  price int,
  foreign key (food_id) references food_items(id),
  foreign key (hotel_id) references hotel(id)
  );
  
 create table transaction(
  id int auto_increment primary key,
  quantity int,
  purchase_date date,
  order_type varchar(10),
  map_id int,
  customer_id int,
  foreign key (map_id) references hotel_items_map(id),
  foreign key (customer_id) references customer(id)
  );
  
  
  insert into hotel(name,mobile,location,owner,email,founded_year) values
  ("abc_pure_veg",9876543210,"trichy","lion","abc@gmail.com","2015"),
  ("xyz_veg_and_non_veg",8978987806,"cbe","tiger","xyz@gmail.com","2017"),
  ("mno_briyani",9876541234,"chennai","dog","mno@gmail.com","2020"),
  ("rst_veg",9876598070,"pondy","cat","rst@gmail.com","2013");
  
  insert into customer(name,age,mobile,fname,lname) values
  ('akash_selvam',23,1234567890,"akash","selvam"),
  ('dinesh_kumar',20,234567890,"dinesh","kumar"),
  ('gurushan',29,345678901,"guru","shan"), 
  ('sunapana_007',54,467890123,"sunapana","007"), 
  ('subbu_raj',10,5678901234,"subbu","raj"),
  ('suresh_kumar',55,6789012345,"suresh","kumar"),
  ('mayilvaganam',32,7890123456,"mayil","vaganam"),
  ('vadivelu_fc',23,8901234567,"vadivelu","fc"),
  ('murugesa_s',50,89012345678,"murugesa","s"),
  ('balamurali',27,9012345678,"bala","murali");
 
 
 insert into food_items(name,type) values
 ('idly',"veg"),
 ('dosa',"veg"),
 ('pongal',"veg"),
 ('meals',"veg"),
 ('chappathi',"veg"),
 ('parotta',"veg"),
 ('meals',"non_veg"),
 ('kiliparotta',"non_veg"),
 ('chicken_briyani',"non_veg"),
 ('mutton_briyani',"non_veg");
 
 insert into hotel_items_map(hotel_id,food_id,quantity,price) values
 (1,1,2,20),
 (1,2,1,40),
 (1,3,1,30),
 (1,4,1,80),
 (1,5,2,40),
 (1,6,2,40),
 (2,1,2,20),
 (2,2,1,40),
 (2,3,1,30),
 (2,4,1,80),
 (2,5,2,40),
 (2,6,2,40),
 (2,7,1,100),
 (2,8,1,60),
 (2,9,1,120),
 (2,10,2,240),
 (3,9,1,120),
 (3,10,2,240),
 (4,1,4,40),
 (4,2,1,20),
 (4,3,1,30),
 (4,4,1,50),
 (4,5,4,40),
 (4,6,4,40);
 
 insert into transaction(quantity,purchase_date,order_type,map_id,customer_id) values
 (2,'2021-12-12',"dine_in",11,1),
 (4,'2021-5-12',"dine_in",1,5),
 (2,'2021-11-12',"take_away",20,1),
 (3,'2021-2-12',"take_away",13,2),
 (1,'2021-6-12',"take_away",13,3),
 (2,'2020-1-12',"dine_in",14,5),
 (1,'2020-12-12',"take_away",15,9),
 (5,'2020-3-12',"dine_in",16,4),
 (7,'2020-7-12',"take_away",7,10),
 (4,'2020-9-12',"take_away",18,5),
 
 (8,'2022-12-12',"dine_in",19,8),
 (10,'2022-5-12',"take_away",13,3),
 (100,'2022-6-12',"dine_in",8,8),
 (1,'2022-10-12',"dine_in",10,10),
 (10,'2022-1-12',"dine_in",11,5),
 (2,'2021-1-23',"dine_in",11,10),
 (4,'2021-5-12',"dine_in",10,5),
 (2,'2021-10-2',"take_away",20,1),
 (3,'2021-12-2',"take_away",13,2),
 (1,'2021-6-10',"take_away",24,3),
 
 (2,'2020-11-18',"dine_in",14,5),
 (1,'2020-12-16',"take_away",15,9),
 (5,'2020-3-13',"dine_in",16,4),
 (7,'2020-7-15',"take_away",23,10),
 (4,'2020-9-29',"take_away",18,5),
 (8,'2022-12-31',"dine_in",19,8),
 (10,'2022-1-22',"take_away",23,3),
 (100,'2022-3-16',"dine_in",18,8),
 (1,'2022-10-22',"dine_in",10,10),
 (10,'2022-9-2',"dine_in",11,5),
 
 (2,'2021-8-12',"dine_in",1,10),
 (4,'2021-9-12',"dine_in",13,5),
 (2,'2021-9-10',"take_away",20,10),
 (3,'2021-12-30',"take_away",24,2),
 (1,'2021-7-12',"take_away",3,8),
 (2,'2020-12-2',"dine_in",14,9),
 (1,'2020-2-12',"take_away",15,8),
 (5,'2020-6-12',"dine_in",16,4),
 (7,'2020-5-22',"take_away",7,10),
 (4,'2020-9-23',"take_away",18,5),
 
 (8,'2022-7-25',"dine_in",19,8),
 (10,'2022-6-22',"take_away",23,3),
 (10,'2022-7-12',"dine_in",18,9),
 (1,'2022-10-12',"dine_in",19,10),
 (10,'2022-11-12',"dine_in",24,5),
 (2,'2021-12-23',"dine_in",20,10),
 (4,'2021-5-12',"dine_in",1,5),
 (2,'2021-10-2',"take_away",2,1),
 (3,'2021-2-2',"take_away",13,2),
 (1,'2021-6-10',"take_away",17,3),
 
 (2,'2020-1-18',"dine_in",4,5),
 (1,'2020-2-16',"take_away",15,9),
 (5,'2020-3-13',"dine_in",16,4),
 (7,'2020-1-15',"take_away",23,10),
 (4,'2020-8-29',"take_away",18,5),
 (8,'2022-2-28',"dine_in",19,8),
 (10,'2022-11-22',"take_away",23,3),
 (100,'2022-3-16',"dine_in",18,8),
 (1,'2022-12-22',"dine_in",10,10),
 (10,'2022-8-2',"dine_in",11,5);
 

drop table transaction;