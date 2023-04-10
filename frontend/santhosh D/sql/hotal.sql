create  schema sir;
use sir;
drop schema sir;


create table customer(id int primary key auto_increment,name varchar(25),age int)auto_increment=20;
drop table customer;
drop table food_item;

create table food_item(id int primary key ,name varchar(20),cost int);


create table trasactions(id int,total int,date varchar(15),ct_id int,ft_id int,
foreign key(ct_id)references customer(id),
foreign key(ft_id)references food_item(id));
drop table trasactionms;
 


insert into customer(name,age) values('sandy',23),
('suresh',22),
('ramesh',42),
('dinesh',23),
('santhosh',44),
('deepan',21),
('vicky',43),
('deepa',34),
('sure',23),
('gaby',29);

 select * from customer;

insert into food_item(id,name,cost)values(1,'briyani',100),
(2,'pongal',40),
(3,'rice',80),
(4,'dosa_set',35),
(5,'spl_briyani',150),
(6,'veg rice',75),
(7,'veg_briyani',30),
(8,'idly_set',30),
(9,'parrota_set',45),
(10,'white_rice',45);
 select* from food_item;
 
 
 insert into trasactions(id,total,date,ct_id,ft_id)values(101,2,'03/05/2021',20,1),
 (102,6,'01/30/2021',21,2),
 (103,4,'04/21/2012',22,3),
 (104,2,'09/04/2014',23,4),
 (105,6,'06/9/2015',24,5),
 (106,7,'05/05/2014',25,6),
 (107,2,'06/09/2012',26,7),
 (108,5,'10/23/2011',27,8),
 (109,5,'10/23/2011',28,9),
 (110,5,'10/23/2011',29,10);
 
 select* from customer;
 select* from food_item;
 select* from trasactions;
 
 
 select *from customer as c
 inner join trasactions as t on
 c.id= t.ct_id inner join food_item as f on
 t.ft_id=f.id ;
 
 
 
 select * from customer as c
 inner join trasactions as t on
 c.id= t.ct_id inner join food_item as f on
 t.ft_id=f.id ;
 
 





