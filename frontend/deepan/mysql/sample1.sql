/*
create a student (id,name,age)
insert 10 record
write query of selector field to total students for major and minor
add a mark column (tamil,english,mathz,physics,chemistry)
find whose has taken more mark in individual subject
overall first and last mark
add standard and section column(12,a,b,c,d)
who all passed in phy
select count studens name from table name
   "  max count    "
   "  min count    "
   " name max(mark) "
*/

use training1;

-- total no major and minor students --- 

select count(*)as major from sample where age >= 18;
select count(*)as minor from sample where age < 18;
 
-- add column tamil,english,mathz,physics,chemistry---

alter table  sample add column tamil int, add column english int, add column maths int, add column physics int, add column chemistry int;

UPDATE `training1`.`sample` SET `tamil` = '88', `english` = '78', `maths` = '87', `physics` = '67', `chemistry` = '67' WHERE (`id` = '1');
UPDATE `training1`.`sample` SET `tamil` = '67', `english` = '67', `maths` = '87', `physics` = '87', `chemistry` = '65' WHERE (`id` = '2');
UPDATE `training1`.`sample` SET `tamil` = '87', `english` = '50', `maths` = '28', `physics` = '91', `chemistry` = '81' WHERE (`id` = '3');
UPDATE `training1`.`sample` SET `tamil` = '98', `english` = '91', `maths` = '92', `physics` = '42', `chemistry` = '72' WHERE (`id` = '4');
UPDATE `training1`.`sample` SET `tamil` = '99', `english` = '90', `maths` = '100', `physics` = '95', `chemistry` = '99' WHERE (`id` = '5');
UPDATE `training1`.`sample` SET `tamil` = '67', `english` = '43', `maths` = '98', `physics` = '45', `chemistry` = '87' WHERE (`id` = '6');
UPDATE `training1`.`sample` SET `tamil` = '98', `english` = '78', `maths` = '76', `physics` = '87', `chemistry` = '65' WHERE (`id` = '7');
UPDATE `training1`.`sample` SET `tamil` = '67', `english` = '65', `maths` = '38', `physics` = '83', `chemistry` = '67' WHERE (`id` = '8');
UPDATE `training1`.`sample` SET `tamil` = '45', `english` = '80', `maths` = '93', `physics` = '76', `chemistry` = '65' WHERE (`id` = '9');
UPDATE `training1`.`sample` SET `tamil` = '20', `english` = '78', `maths` = '31', `physics` = '34', `chemistry` = '23' WHERE (`id` = '10');

-- more mark in individual subjects---

select  max(tamil), max(english), max(maths),max(physics),max(chemistry) from sample; 

select name,tamil from sample where tamil=(select  max(tamil) from sample);
select * from sample;

-- overall first mark and last mark--

 select name,(tamil+english+maths+physics+chemistry) as total from sample where (tamil+english+maths+physics+chemistry)=(select max(tamil+english+maths+physics+chemistry) from sample);
 select name,(tamil+english+maths+physics+chemistry)as total from sample where (tamil+english+maths+physics+chemistry)=(select min(tamil+english+maths+physics+chemistry) from sample);

 select max(tamil+english+maths+physics+chemistry)from sample;
 select min(tamil+english+maths+physics+chemistry)from sample;
 
 -- add column standard and section---
 
alter table  sample add column standard int, add column section char(1);

UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'a' WHERE (`id` = '1');
UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'd' WHERE (`id` = '2');
UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'b' WHERE (`id` = '3');
UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'd' WHERE (`id` = '4');
UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'c' WHERE (`id` = '5');
UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'b' WHERE (`id` = '6');
UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'a' WHERE (`id` = '7');
UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'c' WHERE (`id` = '8');
UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'd' WHERE (`id` = '9');
UPDATE `training1`.`sample` SET `standard` = '12', `section` = 'b' WHERE (`id` = '10');

-- who all passed in physics--

select name, physics,
case 
when physics >= 35 then 'pass'
else
'fail' end as result
from sample;

-- no of students in class--

select count(name) from sample;

-- max count by section--

select section,count(section) as count from sample group by section;
select max(count) from (select section,count(section) as count from sample group by section) as maxi;
select section,count from sample  where count=(select max(count) from (select section,count(section) as count from sample group by section) as maxi);

-- min count by section--

select section,count(section) as count from sample group by section;
select min(count) from (select section,count(section) as count from sample group by section) as maxi;

desc sample;

select * from sample;


create table sample(
id int primary key,
name varchar(20),
age int
);


insert into sample values
 (1,'akash',10),
 (2,'kumar',20),
 (3,'bala',19),
 (4,'harish',16),
 (5,'gokul',19),
 (6,'sandeep',18),
 (7,'deepan',19),
 (8,'santhosh',21),
 (9,'lenin',18),
 (10,'alan',17);
 
 drop table sample;