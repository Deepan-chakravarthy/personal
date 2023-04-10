create schema data;
use data;
create table mark_list (id int primary key,name varchar(20),maths int,physics int, chemistry int);
desc mark_list;
insert into mark_list values (1, "anbu",98,50,76),(2,"aravinth",68,89,75),(3,"barath",75,56,75),(4,"dinesh",47,58,46),(5,"ganesh",47,86,96),
(6,"hari",75,97,77),(7,"ifran",57,68,86),(8,"jhawahar",86,77,75),(9,"ravi",47,68,68);
show tables;
select * from mark_list;
select avg(maths+physics+chemistry)/3 from mark_list; 
select avg(maths) from mark_list;
select avg(physics) from mark_list;
select avg(chemistry) from mark_list;
select name,avg(maths) from mark_list group by name ;
select name, avg(maths+physics+chemistry)/3 from mark_list group by name;
select name, sum(maths+physics+chemistry) from mark_list group by name;