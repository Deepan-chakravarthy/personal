Create Schema School_Students;
use School_Students;
create table Student(Id int not null auto_increment,Name varchar(20) not null,Age int not null,primary key(Id));
insert into Student(Name,Age)values
('Imman',17),('Jai',16),('Jemi',21),('Suresh',23),('Ram',18),
('Karan',25),('Ramesh',28),('Tom',20),('Sam',19),('Varun',26);
select * from Student;
select count(Name) as Total_Students from Student;
select Age from Student where Age=(select max(Age) from Student);
select Age from Student where Age=(select min(Age) from Student);
-- Added New Columns
alter table Student add Tamil int Not Null,add English int Not Null,add Maths int Not Null,add Physics int Not Null,add Chemistry int Not Null;
-- Updated Values for Newly Inserted Columns
 update Student set Tamil='90',English='76',Maths='80',Physics='73',Chemistry='67'where id=1;
 update Student set Tamil='80',English='90',Maths='73',Physics='45',Chemistry='60'where id=2;
 update Student set Tamil='75',English='45',Maths='72',Physics='83',Chemistry='86'where id=3;
 update Student set Tamil='68',English='50',Maths='98',Physics='97',Chemistry='45'where id=4;
 update Student set Tamil='77',English='90',Maths='73',Physics='83',Chemistry='86'where id=5;
 update Student set Tamil='56',English='98',Maths='85',Physics='87',Chemistry='79'where id=6;
 update Student set Tamil='45',English='85',Maths='75',Physics='45',Chemistry='96'where id=7;
 update Student set Tamil='43',English='45',Maths='70',Physics='80',Chemistry='92'where id=8;
 update Student set Tamil='61',English='59',Maths='64',Physics='96',Chemistry='73'where id=9;
 update Student set Tamil='57',English='89',Maths='45',Physics='83',Chemistry='71'where id=10;
 -- View Table Created To Store Result Of The Table
 create view Student_Marks_Updated as
 select Id,Name,Age,Tamil,English,Maths,Physics,Chemistry,(Tamil+English+Maths+Physics+Chemistry) as Total_Marks from Student group by Id;
 select * from Student_Marks_Updated;
 -- Max Marks Each Subject
 select Name,Tamil from Student where Tamil=(select max(Tamil) from Student);
 select Name,English from Student where English=(select max(English) from Student);
 select Name,Maths from Student where Maths=(select max(Maths) from Student);
 select Name,Physics from Student where Physics=(select max(Physics) from Student);
 select Name,Chemistry from Student where Chemistry=(select max(Chemistry) from Student);
  -- Min Marks Each Subject
 select Name,Tamil from Student where Tamil=(select min(Tamil) from Student);
 select Name,English from Student where English=(select min(English) from Student);
 select Name,Maths from Student where Maths=(select min(Maths) from Student);
 select Name,Physics from Student where Physics=(select min(Physics) from Student);
 select Name,Chemistry from Chemistry where Chemistry=(select min(Chemistry) from Student);
 -- Overall 1st Mark
 select Id,Name,Age,Tamil,English,Maths,Physics,Chemistry,Total_Marks from Student_Marks_Updated where Total_Marks=(select max(Total_marks) from Student_Marks_Updated);
 -- Overall Last Mark
  select Id,Name,Age,Tamil,English,Maths,Physics,Chemistry,Total_Marks from Student_Marks_Updated where Total_Marks=(select min(Total_marks) from Student_Marks_Updated);
  -- Added New Columns
alter table Student add Std int not null,add Sec Varchar(5) not null;
-- Updated Values for Newly Inserted Columns
 update Student set Std=12,Sec='A'where id in(1,5,9);
 update Student set Std=12,Sec='B'where id in(2,10,8);
 update Student set Std=12,Sec='C'where id in(3,7);
 update Student set Std=12,Sec='D'where id in(6,4);
 -- Tamil  Pass(Name),Count(Pass),Max,Min
 select Id,Name,Std,Sec,Tamil from Student where Tamil>=50;
 select count(Name) as Count_T_Tamil from (select Id,Name,Std,Sec,Tamil from Student where Tamil>=50)as C_T;
  select Name,Std,sec,Tamil from (select Id,Name,Std,Sec,Tamil from Student where Tamil>=50)as t1 where Tamil=(select max(Tamil) from (select Id,Name,Std,Sec,Tamil from Student where Tamil>=50)as t2);
  select Name,Std,sec,Tamil from (select Id,Name,Std,Sec,Tamil from Student where Tamil>=50)as t11 where Tamil=(select min(Tamil) from (select Id,Name,Std,Sec,Tamil from Student where Tamil>=50)as t12);
  -- English Pass(Name),Count(Pass),Max,Min
 select Id,Name,Std,Sec,English from Student where English>=50;
 select count(Name) as Count_T_English from (select Id,Name,Std,Sec,English from Student where English>=50)as C_E;
  select Name,Std,Sec,English from (select Id,Name,Std,Sec,English from Student where English>=50)as t3 where English=(select max(English) from (select Id,Name,Std,Sec,English from Student where English>=50)as t4);
  select Name,Std,Sec,English from (select Id,Name,Std,Sec,English from Student where English>=50)as t13 where English=(select min(English) from (select Id,Name,Std,Sec,English from Student where English>=50)as t14);
-- Maths Pass(Name),Count(Pass),Max,Min
 select Id,Name,Std,Sec,Maths from Student where Maths>=50;
 select count(Name) as Count_T_Maths from (select Id,Name,Std,Sec,Maths from Student where Maths>=50)as C_M;
  select Name,Maths from (select Id,Name,Std,Sec,Maths from Student where Maths>=50)as t5 where Maths=(select max(Maths) from (select Id,Name,Std,Sec,Maths from Student where Maths>=50)as t6);
    select Name,Maths from (select Id,Name,Std,Sec,Maths from Student where Maths>=50)as t15 where Maths=(select min(Maths) from (select Id,Name,Std,Sec,Maths from Student where Maths>=50)as t16);
-- Physics  Pass(Name),Count(Pass),Max,Min
 select Id,Name,Std,Sec,Physics from Student where Physics>=50;
 select count(Name) as Count_T_Physics from (select Id,Name,Std,Sec,Physics from Student where Physics>=50)as C_P;
  select Name,Physics from (select Id,Name,Std,Sec,Physics from Student where Physics>=50)as t7 where Physics=(select max(Physics) from (select Id,Name,Std,Sec,Physics from Student where Physics>=50)as t8);
    select Name,Physics from (select Id,Name,Std,Sec,Physics from Student where Physics>=50)as t17 where Physics=(select min(Physics) from (select Id,Name,Std,Sec,Physics from Student where Physics>=50)as t18);
-- Chemistry Pass(Name),Count(Pass),Max,Min
 select Id,Name,Std,Sec,Chemistry from Student where Chemistry>=50;
 select count(Name) as Count_T_Chemistry from (select Id,Name,Std,Sec,Chemistry from Student where Chemistry>=50)as C_C;
  select Name,Chemistry from (select Id,Name,Std,Sec,Chemistry from Student where Chemistry>=50)as t9 where Chemistry=(select max(Chemistry) from (select Id,Name,Std,Sec,Chemistry from Student where Chemistry>=50)as t10);
    select Name,Chemistry from (select Id,Name,Std,Sec,Chemistry from Student where Chemistry>=50)as t19 where Chemistry=(select min(Chemistry) from (select Id,Name,Std,Sec,Chemistry from Student where Chemistry>=50)as t20)
 -- Pass & Fail In All Subject
Select Id,Name,Age,Tamil,English,Maths,Physics,Chemistry,Total_Marks,case when Tamil>=50 and English>=50 and Maths>=50 and Physics>=50 and Chemistry>=50 then 'Pass' else 'Fail'end as Result  from Student_Marks_Updated;
-- Passed Students 
Select Id,Name,Age,Tamil,English,Maths,Physics,Chemistry,Total_Marks,Result from (Select Id,Name,Age,Tamil,English,Maths,Physics,Chemistry,Total_Marks,case when Tamil>=50 and English>=50 and Maths>=50 and Physics>=50 and Chemistry>=50 then 'Pass' else 'Fail'end as Result  from Student_Marks_Updated)as P_F where Result='Pass';
-- Failed Students 
Select Id,Name,Age,Tamil,English,Maths,Physics,Chemistry,Total_Marks,Result from (Select Id,Name,Age,Tamil,English,Maths,Physics,Chemistry,Total_Marks,case when Tamil>=50 and English>=50 and Maths>=50 and Physics>=50 and Chemistry>=50 then 'Pass' else 'Fail'end as Result  from Student_Marks_Updated)as P_F where Result='Fail';