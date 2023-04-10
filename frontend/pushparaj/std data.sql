create schema std;
use std;
create table raj(id int primary key auto_increment, Name varchar(30), maths int,physics int, chemisrty int);
insert into raj (name,maths,physics,chemisrty) values ('Pushparaj',99,98,99);
insert into raj (name,maths,physics,chemisrty) values ('raj',89,98,79);
insert into raj (name,maths,physics,chemisrty) values ('ajay',77,88,99);
insert into raj (name,maths,physics,chemisrty) values ('vijay',90,58,80);
insert into raj (name,maths,physics,chemisrty) values ('Praveen',77,98,80);
insert into raj (name,maths,physics,chemisrty) values ('chandru',99,98,69);
insert into raj (name,maths,physics,chemisrty) values ('vinoth',95,90,91);
insert into raj (name,maths,physics,chemisrty) values ('Balaji',87,89,69);
insert into raj (name,maths,physics,chemisrty) values ('siva',29,48,69);
insert into raj (name,maths,physics,chemisrty) values ('sharan',19,38,59);
select * from raj;

select name,maths,physics,chemisrty, sum(maths+physics+chemisrty) as total_marks from raj group by id;
select name, sum(maths+physics+chemisrty) as total_marks from raj group by id;
select name, avg(maths+physics+chemisrty)/3 as average_marks from raj group by id;
select name, avg(maths+physics+chemisrty)/3 as average_marks, sum(maths+physics+chemisrty) as total_marks from raj group by id;
select avg(physics) as physics_avrage,avg(maths) as maths_average,avg(chemisrty) chemistry_average from raj;
select name ,maths as maximum_maths_mark from raj where maths = (select max(maths) from raj );
select name ,physics as maximum_physics_mark from raj where physics = (select max(physics) from raj );
select name,chemisrty as maximum_chemistry_mark from raj where Chemisrty =(select max(chemisrty) from raj);





