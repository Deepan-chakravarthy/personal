desc student_task3;

use first_assignments;

select * from student_task3;

create table student_task3 (id int, name varchar(20),age int, email varchar(20), marks int, ranks int);

insert into student_task3 values (1,'Raju kumar',35,'raju@gmail.com',90,2);
insert into student_task3 values (2,'Ramesh Kumar',40,'ramesh@g.com',81,3),
								 (3,'Suresh Babu',42,'suresh@g.com',72,4),
                                 (4,'Balaji',70,'bala@g.com',65,6),
                                 (5,'Kajith Raju',63,'kaj@g.com',40,7),
                                 (6,'Gowtham Kumar',47,'gow@g.com',69,5),
                                 (7,'Mohan Kumar',40,'moh@g.com',72,4),
                                 (8,'Harish Ram',36,'har@g.com',90,2),
                                 (9,'SathyaRaj',38,'sat@g.com',99,1),
                                 (10,'Rajaram Mohan',42,'rajmohan@g.com',81,3);
						
--------------------------
select * from student_task3 where marks>45 and name like '%kumar';

select * from (select * from student_task3 where marks>45 and name like '%kumar') t where age>37 and age<60;

select ranks,name from (select * from (select * from student_task3 where marks>45 and name like '%kumar') t where age>37 and age<60) t where ranks;
---------------------------

--------------------------
select * from student_task3 where age>40 or marks>75;

select * from(select * from student_task3 where age>40 or marks>75)t where name like 'ra%'; 
 -------------------------
 
 -------------------------
select * from student_task3 where(name like"%ja%" and  name like"%ma%"or name like"%ta%" or name like"%aj%"or name like"%am%"or name like"%am%");

 --------------------------
 
 -------------------------
 alter table student_task3 add column last_name varchar(15);
 
 alter table student_task3 modify last_name varchar(15) after name;
 
 set sql_safe_updates=0;
 
 update student_task3 set last_name= ('ashok kumar') where id=1;
 
 update student_task3 set last_name= ('ganesh kumar') where id=2;
 
 update student_task3 set last_name= ('govind raj') where id=3;
 
 update student_task3 set last_name= ('dinesh kumar') where id=4;
 
 update student_task3 set last_name= ('gobi') where id=5;
 
 update student_task3 set last_name= ('kabi') where id=6;
 
 update student_task3 set last_name= ('senthil kumar') where id=7;
 
 update student_task3 set last_name= ('kannan') where id=8;
 
 update student_task3 set last_name= ('muthu kumar') where id=1;
 
 update student_task3 set last_name= ('hari') where id=1;
--------------------------------------

------------------------------------
select * from student_task3 where name or last_name like '%kumar%';
------------------------------------

-----------------------------
select name,age from student_task3 where age in (35,63,42,70); 
