/*
1.(i want students who age should be >37 and <60) from this result (who mark is >45 and the should end with kumar) finally want rank

2.get me the list of students who (name has ra) and (either age shd be age>40 or mark >75)

3.get the details of the youngest student in the top 4marks

4.get the list of student who name suit would be any character before "a" and post "a" it could be j or m or t

5.add column last name (ashok kumar,ganesh kumar,govind raj,dinesh kumar,gopi,kabi,senthil kumar,kannan, muthu kumar,hari)

6.get the list odf students who name and last name kumar in it.
*/

select name,ranks from student where (age between 37 and 60) and (marks>45) and (name like "%kumar"); ---- answer1 ----

select name from student where (marks>75 or age>40) and (name like "%ra%"); ---- answer2 ----

select min(age) from student  order by marks desc limit 4 ; ---- answer3 ----

select * from student where name like "%ja%" or name like "%ma%" or name like "%ta%" or name like "%aj%" or name like "%am%" or name like "%at%" ; --- answer4 ---

alter table student add column last_name varchar(20) after name;
 


select *  from student;

desc student;

use training;

create table student(
 id int,
 name varchar(20), 
 age int,
 email varchar(50),
 marks int,
 ranks int
 );
 
insert into student (id, name, age, email, marks, ranks) values (1,'Raju kumar',35,'raju@gmail.com',90,2);
insert into student (id, name, age, email, marks, ranks) values (2,'Ramesh Kumar',40,'ramesh@g.com',81,3);
insert into student (id, name, age, email, marks, ranks) values (3,'Suresh Babu',42,'suresh@g.com',72,4);
insert into student (id, name, age, email, marks, ranks) values (4,'Balaji',70,'bala@g.com',65,6);
insert into student (id, name, age, email, marks, ranks) values (5,'Kajith Raju',63,'kaj@g.com',40,7);

insert into student (id, name, age, email, marks, ranks) values (6,'Gowtham Kumar',47,'gow@g.com',69,5);
insert into student (id, name, age, email, marks, ranks) values (7,'Mohan Kumar',40,'moh@g.com',72,4);
insert into student (id, name, age, email, marks, ranks) values (8,'Harish Ram',36,'har@g.com',90,2);
insert into student (id, name, age, email, marks, ranks) values (9,'SathyaRaj',38,'sat@g.com',99,1);
insert into student (id, name, age, email, marks, ranks) values (10,'Rajaram Mohan',42,'rajmohan@g.com',81,3);

select  name,ranks from (select marks,name,ranks from (select * from student where age >37 and age <60) student where marks >45) student where name like "%kumar";

select name,ranks from student where (age between 37 and 60) and (marks>45) and (name like "%kumar");

select name from student where (marks>75 or age>40) and (name like "%ra%");

desc student;

select *  from student;

