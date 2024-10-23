create schema hotel;
use hotel;

drop table trans;
create table food_item(
		id int primary key,
        user_id int,
        items varchar(20),
        price int);
        
create table trans(
		id bigint,
        user_id int,
        food_id int,
        type varchar(15),
        mode varchar(15),
        status varchar(10),
        pay_date varchar(20));
        
create table user(
		id int,
        name varchar(20),
        age int,
        mob_num bigint,
        address varchar(20),
        date varchar(20));
        
insert into food_item(id,user_id,items,price) values (201,null,'idly',10),
													  (202,null,'dosa',50),
                                                      (203,null,'briyani',200),
                                                      (204,null,'chappathi',40),
                                                      (205,null,'parotta',40),
                                                      (206,null,'meal',100),
                                                      (207,null,'vadai',10),
                                                      (208,null,'poori',50);
 select * from food_item;                                         
    update food_item set user_id = 1001 where id in (201,204,207);   
    update food_item set user_id = 1002 where id in (202,203);
    update food_item set user_id = 1002 where id in (205,206,208);
    

insert into trans(id,user_id,food_id,type,mode,status,pay_date) values 
							(101,null,null,'card','online','success','2022-04-23'),
                            (102,null,null,'upi','online','success','2022-02-02'),
                            (103,null,null,'cash','offline','success','2021-09-03'),
                            (104,null,null,'card','online','failed','2020-04-08');

select * from trans;  


insert into user(id,name,age,mob_num,address,date) values
							(1001,'james',34,9762876283,'chennai','2021-09-03'),
                            (1002,'gautam',49,8837489373,'madurai','2020-04-08'),
                            (1003,'kamalesh',25,9892987982,'kumbakonam',2020-04-08);	
 select * from user;  
 alter table user add primary key(id);
 alter table trans add primary key(id);
 alter table food_item add foreign key (user_id) references user (id);
 alter table trans add foreign key (user_id) references user(id);
 alter table trans add foreign key (food_id) references food_item(id);
 
 select u.id,u.name,u.mob_num, f.id,f.items,f.price from user u  
 right join food_item f on u.id=f.user_id