use sample;
create table studentsss(id int,name varchar(30),age int);
insert into studentsss(id,name,age)values(1,'sandy',22),
(2,'sure',18),
(3,'bagy',19),
(4,'gopal',20),
(5,'lenin',22),
(6,'deepan',24),
(7,'suman',45),
(8,'surya',23),
(9,'kevin',15),
(10,'jegan',29);
insert into studentsss(id,name,age)values(11,'jimmy',22);
insert into studentsss(id,name,age)values(12,'sandy',45);
insert into studentsss(id,name,age)values(13,'jimmy',22);
insert into studentsss(id,name,age)values(14,'sandy',34);
select * from studentsss;

select * from studentsss  as major where age>18;

select * from studentsss  as manor where age<18;

alter table studentsss add column tamil int ,add column english int,add column maths int,add column physics int,add column chemistry int;
set sql_safe_updates=0;
update sample.studentsss set tamil=34 ,english =57 , maths=89 , physics=98 , chemistry=89 where id=1; 
update sample.studentsss set tamil=56 ,english =45 , maths=89 , physics=78 , chemistry=34 where id=2;
update sample.studentsss set tamil=34 ,english =67 , maths=34 , physics=45 , chemistry=67 where id=3; 
update sample.studentsss set tamil=90 ,english =56 , maths=78 , physics=23 , chemistry=67 where id=4; 
update sample.studentsss set tamil=84 ,english =47 , maths=69 , physics=58 , chemistry=56 where id=5; 
update sample.studentsss set tamil=38 ,english =53 , maths=84 , physics=90 , chemistry=85 where id=6; 
update sample.studentsss set tamil=45 ,english =76 , maths=45 , physics=89 , chemistry=45 where id=7; 
update sample.studentsss set tamil=67 ,english =54 , maths=69 , physics=67 , chemistry=67 where id=8;
update sample.studentsss set tamil=35 ,english =47 , maths=49 , physics=58 , chemistry=69 where id=9;  
update sample.studentsss set tamil=74 ,english =87 , maths=67 , physics=76 , chemistry=67 where id=10; 
update sample.studentsss set tamil=74 ,english =87 , maths=67 , physics=76 , chemistry=67 where id=11; 
update sample.studentsss set tamil=34 ,english =34 , maths=54 , physics=66 , chemistry=45 where id=12; 
update sample.studentsss set tamil=45 ,english =85 , maths=67 , physics=45 , chemistry=32 where id=13; 
update sample.studentsss set tamil=34 ,english =57 , maths=33 , physics=23 , chemistry=45 where id=14; 

select * from studentsss;
select max(tamil) from studentsss;

select name, tamil from studentsss order by  tamil desc limit 1;


--------------------------------- -- over all maximum mark----------------------------------
select max(tamil) ,max(english),max(maths),max(physics),max(chemistry)from studentsss;
alter table studentsss add column total int;
select * from studentsss;

select (tamil+english+maths+physics+chemistry)total from studentsss where id=1;
select (tamil+english+maths+physics+chemistry)total from studentsss where id=2;
select (tamil+english+maths+physics+chemistry)total from studentsss where id=3;
select (tamil+english+maths+physics+chemistry)total from studentsss where id=14;

update studentsss set total = (tamil+english+maths+physics+chemistry) where id in (12,13,14);
select name,total from studentsss where total = (select max(total) from studentsss);

select name,total from studentsss order by total desc limit 1;

select name,(tamil+english+maths+physics+chemistry) from studentsss where 
(tamil+english+maths+physics+chemistry)
 =(select max((tamil+english+maths+physics+chemistry)) from studentsss)order by name;
 
 select name,(tamil+english+maths+physics+chemistry) from studentsss where 
(tamil+english+maths+physics+chemistry)
 =(select min((tamil+english+maths+physics+chemistry)) from studentsss)order by name;

alter table studentsss add column section varchar(10) after age;
update studentsss set section="A" where id=1;
update studentsss set section="B" where id=2;
update studentsss set section="C" where id=3;
update studentsss set section="D" where id=4;
update studentsss set section="A" where id=5;
update studentsss set section="B" where id=6;
update studentsss set section="C" where id=7;
update studentsss set section="D" where id=8;
update studentsss set section="C" where id=9;
update studentsss set section="D" where id=10;
update studentsss set section="A" where id=11;
update studentsss set section="B" where id=12;
update studentsss set section="C" where id=13;
update studentsss set section="D" where id=14;

------ pass in physics------;
select name, physics from studentsss where physics > 40;

---------------- count name of table -------------------;
select count(name) from studentsss;
select section,count(section) from studentsss group by section;
--------------- max values ;
select max(count) from (select section,count(section) as count from studentsss group by section) as li;
----------------- min values;
select min(count) from(select section,count(section) as count from studentsss group by section) as san;










