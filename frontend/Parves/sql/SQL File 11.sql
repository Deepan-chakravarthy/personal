create schema ta1;
use ta1;
create table std (id int, name varchar(10), age int);
insert into std (id,name,age) values (1, 'parves', 22),
(2, 'mushraf', 14),
(3, 'ibu', 16),
(4, 'refai', 21),
(5, 'kalam', 17),
(6, 'uvyz', 27),
(7, 'wari', 23),
(8, 'waji', 15),
(9, 'anu', 27),
(10, 'sharif', 24);

select * from std;

/* total number of students major count, minor count */

select count(*) as total_std from std;
select count(*) as major_count from std where age<18;
select count(*) as minor_count from std where age>18;

/* add a mark column (T,E,M,P,C) */

alter table std add column (tamil int, english int, maths int, physics int, chemistry int);
update std set tamil=90, english=78, maths=84, physics=88, chemistry=69 where id=10;

/* more mark in individual subject */

select name, tamil from std where tamil=(select max(tamil) total_mark from std);
select name, english from std where english=(select max(english) total_mark from std);
select name, maths from std where maths=(select max(maths) total_mark from std);
select name, physics from std where physics=(select max(physics) total_mark from std);
select name, chemistry from std where chemistry=(select max(chemistry) total_mark from std);

/* overall last mark and overall first mark */

select (tamil+english+maths+physics+chemistry) as total_mark from std;
select max(tamil+english+maths+physics+chemistry) as overall_first_mark from std;
select min(tamil+english+maths+physics+chemistry) as overall_last_mark from std;

/* add standard and section column */

alter table std add column standard varchar(10) after age;
alter table std add column section varchar(10) after standard;
update std set standard = '12th';
update std set section = 'C' where id = 7;

/* all passes in physics student name from table name */

select id,name, physics from std where physics>75;

select count(*) as total_std from std;

select name,(tamil+english+maths+physics+chemistry) as maximum_mark_from_table from std;