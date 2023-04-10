create schema training;
use training;
create table Drivers (id int,name varchar(20),bus_no varchar(10),age int,cantact_no bigint,address varchar(30),street varchar(20),city varchar(20),pincode int,shift int);
insert into Drivers values (1,'Raju kumar','22B',35,9750477877,'12th block SAI appartments','sai street','salem','6363404','1'),
 (2,'Ramesh Kumar','22B',40,9750489870,'45th block sri appartments','sri street','dharmapuri','6463404','2'),
 (3,'Suresh Babu','11A',42,9750433770,'VM appartments','sakthi street','trichy','6763404','1'),
 (4,'Balaji','11A',35,8750455667,'SR appartments','kaithi street','mettur','6353404','2'),
 (5,'Kajith Raju','13',28,8750434321,'SAI appartments','saiyath street','erode','6463404','1'),
 (6,'Gowtham Kumar','13',53,8765434431,'APEX appartments','jamal street','naamakkal','6363404','2'), 
 (7,'Mohan Kumar','15',40,8956743321,'SATHI appartments','kayal street','bhavani','6963404','1'),
 (8,'Raj Kumar','15',45,8956843321,'DMT appartments','karma street','chennai','6965504','2')
 (9,'SathyaRaj','12B',38,9760455330,'TNT appartments','vandumurugan street','salem','6864504','1'),
 (10,'Rajaram Mohan',42,8767544,'DNS appartments','dubakkoor street','chennai','6968504','2');
select * from students;
select * from students where age >37 and age <60;
select * from students where age between 37 and 60;
select * from (select * from students where age >37 and age <60) as resukt where name like '%kumar' and marks>45;
select name,ranks from (select * from (select * from students where age >37 and age <60) as resukt where name like '%kumar' and marks>45)as result2 ;

select * from students where name like '%ra%' and (age>40 or marks>75);

select * from students where name like '%ja%' or name like '%ma%' or name like '%ta%' or name like  '%aj%' or name like  '%am%'or name like '%at%'; 
-- select * from students where name like ('%ja%' and   '%ma%' and  '%ta%' and  '%aj%' and  '%am%' and  '%at%') ; 
alter table students add last_name varchar(20);
-- update students set last_name = ('ashok kumar','ganeshkumar','govindharaj','dieshkumar','gopi','kavi','senthilkumar','kannan','muthukumar','Hari') where id = 1
update students set last_name = 'ashok kumar'where id=1;
update students set last_name = 'ganeshkumar'where id=2;
update students set last_name = 'govindharaj'where id=3;
update students set last_name = 'dieshkumar'where id=4;
update students set last_name = 'gopi'where id=5;
update students set last_name = 'kavi'where id=6;
update students set last_name = 'senthilkumar'where id=7;
update students set last_name = 'kannan'where id=8;
update students set last_name = 'muthukumar'where id=9;
update students set last_name = 'Hari'where id=10;
select * from students where name like '%kumar' and Last_name like '%kumar'; 
select * from students where age in (35,42,65,70);



