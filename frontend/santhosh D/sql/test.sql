create schema day_3;
create table students (id int, name varchar(20), age int, email varchar(50), marks int, ranks int);
insert into students (id, name, age, email, marks, ranks) values (1,'Raju kumar',35,'raju@gmail.com',90,2);
insert into students (id, name, age, email, marks, ranks) values (2,'Ramesh Kumar',40,'ramesh@g.com',81,3);
insert into students (id, name, age, email, marks, ranks) values (3,'Suresh Babu',42,'suresh@g.com',72,4);
insert into students (id, name, age, email, marks, ranks) values (4,'Balaji',70,'bala@g.com',65,6);
insert into students (id, name, age, email, marks, ranks) values (5,'Kajith Raju',63,'kaj@g.com',40,7);
insert into students (id, name, age, email, marks, ranks) values (6,'Gowtham Kumar',47,'gow@g.com',69,5);
insert into students (id, name, age, email, marks, ranks) values (7,'Mohan Kumar',40,'moh@g.com',72,4);
insert into students (id, name, age, email, marks, ranks) values (8,'Harish Ram',36,'har@g.com',90,2);
insert into students (id, name, age, email, marks, ranks) values (9,'SathyaRaj',38,'sat@g.com',99,1);
insert into students (id, name, age, email, marks, ranks) values (10,'Rajaram Mohan',42,'rajmohan@g.com',81,3);
select * from students;
select * from students where age>37 and age<67;
select * from (select * from students where age>37 and age<67) as san where marks>45 and name like "%kumar";
select name,ranks from(select * from (select * from students where age>36 and age<67) as result where marks>45  and name like "%kumar")as test; 
SELECT name ,ranks 
   FROM students
   WHERE (age>37 AND age<60) 
        AND (marks>45 AND name LIKE '%kumar');
select * from students where (name like"%ra%" )and (age>40 or  marks>75);
select email,marks,ranks,age from students where(email like"%g.com%") and(marks>40 and ranks=1 and age>30);
select *from students order by age asc limit 4;  
select * from students where(name like"%ja%" and  name like"%ma%"or name like"%ta%" or name like"%aj%"or name like"%am%"or name like"%am%");
alter table students add column last_name varchar(20) after name;
update students set last_name="ashok kumar" where id=1;
set sql_safe_updates=0;
update students set last_name="ganesh kumar" where id=2;
update students set last_name="Govind raj" where id=3;
update students set last_name="dinesh kumar" where id=4;
update students set last_name="gophi" where id=5;
update students set last_name="kavi" where id=6;
update students set last_name="Senthil kumar" where id=7;
update students set last_name="Hari" where id=8;
update students set last_name="Muthu kumar" where id=9;
update students set last_name="Kannan" where id=10;
select *  from students where (name like"%kumar" )or( last_name like"%kumar");
select * from students where  age in(35,42,65,70);
select age,name where age in(35,45,65,70);
select * from students.columns;




