create schema rest;
use rest;
create table FoodItem (id int, food_id varchar(10), food_name varchar(40),price varchar(10));
insert into FoodItem (id,food_id,food_name,price) values
(1,'101','dosa','50'),
(2,'102','idly','20'),
(3,'103','poori','30'),
(4,'104','vada','50'),
(5,'105','oots','80'),
(6,'106','nooduls','90'),
(7,'107','frideRise','50'),
(8,'108','magi','50'),
(9,'109','ravai','50'),
(10,'110','chappathi','50');
alter table FoodItem add primary key (id);
alter table FootItme drop primary key ;
desc FoodItem;
Create table Trans(id int, cust_id bigint, food_id varchar(10), tran_type varchar(20), tran_mode varchar(20),tran_status varchar(20));
insert into Trans(id,cust_id,food_id,tran_type,tran_mode,tran_status) values 
(1,201,'101','card','online','success'),
(2,201,'102','card','online','success'),
(3,202,'103','cash','ofline','faild'),
(4,203,'104','cash','online','success'),
(5,203,'105','card','ofline','faild'),
(6,204,'106','UPI','online','success'),
(7,205,'107','card','online','success'),
(8,206,'106','cash','ofline','faild'),
(9,207,'109','card','online','success'),
(10,208,'110','UPI','online','faild');

alter table Trans add foreign key (cust_id) references customer(cust_id);
alter table Trans add foreign key (food_id) references FoodItem(food_id);

create table customer( cust_id bigint, cust_name varchar(20),cust_age int,mobilenumber bigint,address varchar(20));
insert into customer(cust_id,cust_name,cust_age,mobilenumber,address)values 
(201,'Manimaran',28,8974561253,'Thanjavur'),
(202,'Vignesh',36,8529637410,'Mannargudi'),
(203,'Karun',47,9786963275,'Tiruvarur'),
(204,'Vimalnath',58,8602003432,'Madurai'),
(205,'Sivakarthik',54,9852647593,'Thanjavur'),
(206,'Dinesh',39,9047659335,'Krishnagiri'),
(207,'Ayyappan',48,7094123912,'Thanjavur'),
(208,'Manimaran',28,7904804542,'Mannargudi');
alter table customer add primary key (cust_id);
alter table customer add column id int;
update customer  set id='1' where cust_id in(201);
update customer  set id='2' where cust_id in(202);
update customer  set id='3' where cust_id in(203);
update customer  set id='4' where cust_id in(204);
update customer  set id='5' where cust_id in(205);
update customer  set id='6' where cust_id in(206);
update customer  set id='7' where cust_id in(207);
update customer  set id='8' where cust_id in(208);
alter table customer add foreign key (id) references FoodItem(id);

select c1.cust_name,T1.cust_id,c1.mobilenumber from customer c1  left join Trans T1 on  T1.cust_id=C1.cust_id;

select T1.tran_type,T1.cust_id from FoodItem f1 inner join Trans T1 on f1.food_id=t1.food_id;

select f1.food_name,f1.price,t1.food_id,c1.cust_name from FoodItem f1 inner join Trans t1 on t1.food_id=f1.food_id right join customer c1 on c1.cust_id=t1.cust_id order  by c1.cust_name ;

select c1.cust_id,c1.cust_name,F1.food_name,t1.tran_type from customer c1,FoodItem F1, where c1.id=f1.id and t1.cust_id=203;


