create schema hot;
use hot;
create table Hotel(id int, Hotel_Name varchar(30), Food_Id int, Food_Price int, Hotel_phone_Number int, Hotel_Address varchar(20), primary key(id));
create table food(id int,food_name varchar(40),primary key(id));
create table customer(id int, name varchar(20),phonenumber varchar(20),age int,mail varchar(20),address varchar(20),primary key(id));
create table orders(id int,customer_id int,Food_Id int,hotel_id int,orderdate date,primary key(id), foreign key(customer_id) references customer(id),
foreign key(Food_Id) references food(id), foreign key(hotel_id) references Hotel(id)) ;
