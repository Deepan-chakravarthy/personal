create schema food;
use  food;
create table items(id int primary key, menu_list varchar(20));
insert into items values(1,"idly"),
                        (2,"dosa"),
                        (3,"puri"),
                        (4,"vadai"),
                        (5,"paniyaram"),
                        (6,"chappathi"),
                        (7,"pongal"),
                        (8,"uuthapam"),
                        (9,"parota"),
                        (10,"briyani");
	select*from items;
    drop table items; 
    create table customer(id int primary key,name varchar(30));
    insert into customer values(101,"tom"),
    (102,"som"),
    (103,"venom"),
    (104,"sanam"),
    (105,"vanam");
    select*from customer;
drop table transaction;
create table shop_transaction(id int primary key, transaction_id int, customer_id int ,item_id int,item_price int, quantity int, total_price int, date date,
 foreign key  (customer_id) references customer(id), foreign key (item_id) references items(id),  foreign key ( transaction_id) references transaction_details(id)  );
    select*from shop_transaction;  
    insert into shop_transaction values (1001,201,101,1,5,2,0,20220101);
                                insert into shop_transaction values 
                                (1002,201,101,4,3,2,0,20220101);
	 insert into shop_transaction values 
                                (1003,202,102,3,10,10,0,20220101),
                                 (1004,202,102,4,3,2,0,20220105),
                                  (1005,202,102,9,12,2,0,20220104),
                                   (1006,203,103,10,90,2,0,20220102),
                                    (1007,203,103,9,12,2,0,20220103),
                                     (1008,203,103,5,5,10,0,20220104),
                                   (1009,204,104,5,5,15,0,20220101),
                                   (1010,204,104,6,10,10,0,20220102),
                                   (1011,204,104,7,15,1,0,20220103),
                                   (1012,204,104,8,10,5,0,20220104),
                                   (1013,204,104,3,10,10,0,20220105),
                                   (1014,205,105,6,10,10,0,20220102),
                                   (1015,205,105,8,10,7,0,20220102);
                                   
	update shop_transaction set  total_price=quantity*item_price ;
    set sql_safe_updates=0;
						select * from shop_transaction ;
                                   select customer_id,transaction_id,sum(total_price) from shop_transaction group by  transaction_id;
                                   
                                   
                                   
                                select   customer_id,(quantity) from transaction where quantity = (select max(quantity) from transaction) group by customer_id;  
                                 select   customer_id,(total_price) from transaction where total_price = (select max(total_price) from transaction) group by customer_id;  
             select*from transaction;                     
    select customer_id,item_price,quantity,(quantity*item_price) as total_price from transaction group by customer_id;                             
                                 
                                 select (total);
                                 create table transaction_details(id int primary key, bank_name varchar(10), bank_id int);
                                 insert into transaction_details values(201,"sbi",1),
                                 (202,"kotak",2),
                                 (203,"vysya",3),
                                 (204,"indian",4),
                                 (205,"bob",5);
                                 	select*from transaction_details;
                                  drop table transaction_details;
  
                                  ----------------- aug 6 -----------------
create schema rev;
use rev;
create table student(id int primary key, name varchar(20), maths int, physics int,chemistry int);
insert into student(id,name,maths,physics,chemistry)
values(1,"gabi",99,89,69),
       (2,"tommi",46,78,89),
       (3,"saami",69,54,59),
       (4,"jeni",47,74,65),
       (5,"johni",66,55,44),
       (6,"sandi",87,67,40),
       (7,"juani",88,79,56),
       (8,"lee",55,40,77),
       (9,"bruce",87,89,64),
       (10,"jackie",37,71,98);
select*from student;
                                  ---------- total marks by each student ---------------
select id,name,(maths+physics+chemistry) as total_marks from student;
                                     ---------- average mark by each student -------------
   select id, name , ((maths+physics+chemistry)/3) as average_mark from student ;  
                       ----------- avg marks on maths,physics, chemsitry -------------------
   select avg(maths),avg(physics),avg(chemistry) from student;
   select name, (physics)  from student where physics=(select max(physics) from student);
     select name, (maths) from student where maths=(select max(maths) from student);
      select name, (chemistry) from student where chemistry=(select max(chemistry) from student) ;
       
       select name, physics,chemistry,maths from student where physics=(select max(physics) from student) union
       select name,  physics,chemistry,(maths) from student where maths=(select max(maths) from student) union
      select name,  physics,(chemistry),maths from student where chemistry=(select max(chemistry) from student) ;
      
    
     
                                  
                                  
                                  
                                  
                                  
                                  
                                  