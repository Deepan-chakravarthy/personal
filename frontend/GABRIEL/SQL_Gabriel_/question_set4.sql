create schema question_set_4;
create table question_set_4.students_details(student_id int primary key, student_name varchar(30),area varchar(20),bus_name varchar(30),college_name varchar(30));
desc table question_set_4.students_details;
insert into question_set_4.students_details(student_id , student_name ,area,bus_name ,college_name) 
values(1,"gabriel","arisipalayam","H.C PRIVATE BUS","SHC"),
(2,"thomas","vadapalani","S.E.T.C GOVT BUS","SVM"),
(3,"suman","arisipalayam","VENU PRIVATE BUS","SJC"),
(4,"santosh","vadapalani","A.T.C GOVT BUS","SASTRA"),
(5,"kumar","arisipalayam","H.C PRIVATE BUS","SHC"),
(6,"vetri","vadpalani","S.E.T.C GOVT BUS","SVM"),
(7,"velu","arisipalayam","VENU PRIVATE BUS","SJC"),
(8,"sam","vadapalani","A.T.C GOVT BUS","SASTRA"),
(9,"ram","arisipalayam","H.C PRIVATE BUS","BISHOP"),
(10,"gobi","cheyyar","S.E.T.C GOVT BUS","SHC"),
(11,"rakesh","tambaram","S.E.T.C GOVT BUS","SJC"),
(12,"rocky","cheyyar","VENU PRIVATE BUS","SHC"),
(13,"federrer","tambaram","A.T.C GOVT BUS","SVM"),
(14,"dhoni","ariyalur","H.C PRIVATE BUS","BISHOP"),
(15,"messi","tambaram","H.C PRIVATE BUS","LOYOLA"),
(16,"ronaldo","atc nagar","S.E.T.C GOVT BUS","PACHAIPPAS"),
(17,"sunil","ariyalur","VENU PRIVATE BUS","SVM"),
(18,"bechkam","atc nagar","A.T.C GOVT BUS","SJC"),
(19,"virat","cheyyar","H.C PRIVATE BUS","LOYOLA"),
(20,"yusuf","vadapalani","H.C PRIVATE BUS","PACHAIPPAS");

SELECT *FROM question_set_4.students_details;

CREATE TABLE  question_set_4.bus_details(bus_name varchar(30),total_seats int,bus_type varchar(12),busstop varchar(30),college_route varchar(30),driver_name varchar(30),shift int,student_id int primary key) ;
desc  TABLE  question_set_4.bus_details;
insert into question_set_4.bus_details(bus_name ,total_seats ,bus_type ,busstop ,college_route,driver_name ,shift,student_id ) 
values("H.C PRIVATE BUS",40,"private","arisipalayam","SHC","murugan",1,1),
("S.E.T.C GOVT BUS",35,"public","vadapalani","SVM","vadivel",1,2),
("VENU PRIVATE BUS",45,"private","arisipalayam","SJC","raja",1,3),
("A.T.C GOVT BUS",42,"public","vadapalani","SASTRA","pandiyan",1,4),
("H.C PRIVATE BUS",40,"private","arisipalayam","SHC","murugan",1,5),
("S.E.T.C GOVT BUS",35,"public","vadpalani","SVM","vadivel",1,6),
("VENU PRIVATE BUS",45,"private","arisipalayam","SJC","pandiyan",1,7),
("A.T.C GOVT BUS",42,"public","vadapalani","SASTRA","parthiban",2,8),
("H.C PRIVATE BUS",40,"private","arisipalayam","BISHOP","murugan",1,9),
("S.E.T.C GOVT BUS",35,"public","cheyyar","SHC","vadivel",1,10),
("S.E.T.C GOVT BUS",35,"public","tambaram","SJC","kumar",2,11),
("VENU PRIVATE BUS",45,"private","cheyyar","SHC","raja",1,12),
("A.T.C GOVT BUS",42,"public","tambaram","SVM","parthiban",2,13),
("H.C PRIVATE BUS",40,"private","ariyalur","BISHOP","murugan",1,14),
("H.C PRIVATE BUS",40,"private","tambaram","LOYOLA","kali",2,15),
("S.E.T.C GOVT BUS",35,"public","atc nagar","PACHAIPPAS","kumar",2,16),
("VENU PRIVATE BUS",45,"private","ariyalur","SVM","gopal",2,17),
("A.T.C GOVT BUS",42,"public","atc nagar","SJC","parthiban",2,18),
("H.C PRIVATE BUS",40,"private","cheyyar","LOYOLA","kali",2,19),
("H.C PRIVATE BUS",40,"private","vadapalani","PACHAIPPAS","kali",2,20);
SELECT *FROM question_set_4.bus_details;

create table question_set_4.college_details(student_id int primary key, student_name varchar(30),college_name varchar(20),college_id varchar(30),college_area varchar(30));
insert into question_set_4.college_details(student_id , student_name ,college_name,college_id ,college_area ) 
values(1,"gabriel","SHC",0337,"tpt nagar"),
(2,"thomas","SVM",0338,"uthang nagar"),
(3,"suman","SJC",0339,"trichy nagar"),
(4,"santosh","SASTRA",0340,"cuddal nagar"),
(5,"kumar","SHC",0337,"tpt nagar"),
(6,"vetri","SVM",0338,"uthang nagar"),
(7,"velu","SJC",0339,"trichy nagar"),
(8,"sam","SASTRA",0340,"cuddal nagar"),
(9,"ram","BISHOP",0341,"matha nagar"),
(10,"gobi","SHC",0337,"tpt nagar"),
(11,"rakesh","SJC",0339,"trichy nagar"),
(12,"rocky","SHC",0337,"tpt nagar"),
(13,"federrer","SVM",0338,"uthang nagar"),
(14,"dhoni","BISHOP",0341,"matha nagar"),
(15,"messi","LOYOLA",0342,"ak nagar"),
(16,"ronaldo","PACHAIPPAS",0343,"pk nagar"),
(17,"sunil","SVM",0338,"uthang nagar"),
(18,"bechkam","SJC",0339,"trichy nagar"),
(19,"virat","LOYOLA",0342,"ak nagar"),
(20,"yusuf","PACHAIPPAS",0343,"pk nagar");

SELECT *FROM question_set_4.college_details;
create table  question_set_4.driver_details(driver_id int,driver_name varchar(30),bus_name varchar(30),busstop varchar(30),college_route varchar(20),student_id int);
insert into  question_set_4.driver_details(driver_id ,driver_name ,bus_name,busstop ,college_route,student_id  ) 
values(203,"murugan","H.C PRIVATE BUS","arisipalayam","SHC",1),
(204,"vadivel","S.E.T.C GOVT BUS","vadapalani","SVM",2),
(205,"raja","VENU PRIVATE BUS","arisipalayam","SJC",3),
(205,"pandiyan","A.T.C GOVT BUS","vadapalani","SASTRA",4),
(203,"murugan","H.C PRIVATE BUS","arisipalayam","SHC",5),
(204,"vadivel","S.E.T.C GOVT BUS","vadpalani","SVM",6),
(205,"pandiyan","VENU PRIVATE BUS","arisipalayam","SJC",7),
(206,"parthiban","A.T.C GOVT BUS","vadapalani","SASTRA",8),
(203,"murugan","H.C PRIVATE BUS","arisipalayam","BISHOP",9),
(204,"vadivel","S.E.T.C GOVT BUS","cheyyar","SHC",10),
(206,"kumar","S.E.T.C GOVT BUS","tambaram","SJC",11),
(205,"raja","VENU PRIVATE BUS","cheyyar","SHC",12),
(207,"parthiban","A.T.C GOVT BUS","tambaram","SVM",13),
(203,"murugan","H.C PRIVATE BUS","ariyalur","BISHOP",14),
(208,"kali","H.C PRIVATE BUS","tambaram","LOYOLA",15),
(206,"kumar","S.E.T.C GOVT BUS","atc nagar","PACHAIPPAS",16),
(203,"gopal","VENU PRIVATE BUS","ariyalur","SVM",17),
(207,"parthiban","A.T.C GOVT BUS","atc nagar","SJC",18),
(208,"kali","H.C PRIVATE BUS","cheyyar","LOYOLA",19),
(208,"kali","H.C PRIVATE BUS","vadapalani","PACHAIPPAS",20);
SELECT *FROM question_set_4.driver_details;
SELECT *FROM question_set_4.college_details;
SELECT *FROM question_set_4.bus_details;
SELECT *FROM question_set_4.students_details;

select count( question_set_4.students_details.student_id)  max_students_travelling , question_set_4.bus_details.bus_type
from  question_set_4.students_details
  join  question_set_4.bus_details 
 on   question_set_4.students_details.student_id=  question_set_4.bus_details.student_id 
 group by   question_set_4.bus_details.bus_type
 order by count(  question_set_4.students_details.student_id) desc limit 1 ;
 
 select count( question_set_4.students_details.student_id)  min_students_travelling , question_set_4.bus_details.bus_type
from  question_set_4.students_details
 join  question_set_4.bus_details 
 on   question_set_4.students_details.student_id=  question_set_4.bus_details.student_id 
 group by   question_set_4.bus_details.bus_type
 order by count(  question_set_4.students_details.student_id) asc limit 1 ;
 
 select count(question_set_4.driver_details.driver_id) driver_with_max_shift,question_set_4.driver_details.driver_name 
 from question_set_4.driver_details 
 join question_set_4.students_details 
 on  question_set_4.driver_details.student_id  =  question_set_4.students_details.student_id
 group by question_set_4.driver_details.driver_id  
 order by count(question_set_4.driver_details.driver_id) desc limit 1
 ;
 -------------------------------------------------- 25/07/2022 --------------------------------
 create schema question_Set_6;
 drop table  question_Set_6.student;
 create  table  question_Set_6.student(id int primary key, name varchar(20), age int );
 insert into question_Set_6.student(id, name , age ) values(1,"gabi",21),
 (2,"tomas",17),
 (3,"alex",17),
 (4,"gabi",18),
 (5,"babu",17),
 (6,"ravi",21),
 (7,"gopal",20),
 (8,"juan",19),
 (9,"suman",21),
 (10,"arvind",18);
 select*from question_Set_6.student;
 select id,name as major ,age from question_Set_6.student  where age>=18 ;
 select count(age) major from question_Set_6.student where age>=18  ;
  select id,name as minor ,age from question_Set_6.student  where age<=18 ;
   select count(age) minor from question_Set_6.student where age<= 18  ;
 alter table question_Set_6.student add column tamil int,add english  int,add maths int ,add physics  int, add chemistry int;
 update question_Set_6.student set tamil=90, english=78  , maths=35  , physics=45  ,  chemistry=63  where id=1 ;
 update question_Set_6.student set tamil=80, english=68  , maths=45  , physics=55  ,  chemistry=93  where id=2 ;
 update question_Set_6.student set tamil=70, english=58  , maths=55  , physics=65  ,  chemistry=83  where id=3 ;
 update question_Set_6.student set tamil=60, english=48  , maths=65  , physics=75  ,  chemistry=73  where id=4 ;
 update question_Set_6.student set tamil=50, english=38  , maths=75  , physics=85  ,  chemistry=43  where id=5 ;
 update question_Set_6.student set tamil=40, english=78  , maths=85  , physics=95  ,  chemistry=33  where id=6 ;
 update question_Set_6.student set tamil=76, english=88  , maths=95  , physics=56  ,  chemistry=37  where id=7 ;
 update question_Set_6.student set tamil=66, english=76  , maths=100  , physics=75  ,  chemistry=47  where id=8 ;
 update question_Set_6.student set tamil=56, english=32  , maths=43  , physics=95  ,  chemistry=67  where id=9 ;
 update question_Set_6.student set tamil=35, english=56  , maths=33 , physics=37  ,  chemistry=69  where id=10 ;
 select  name,tamil from  question_Set_6.student order by tamil desc limit 1;
  select  name,english from  question_Set_6.student order by english desc limit 1;
  select  name,chemistry from  question_Set_6.student order by chemistry desc limit 1;
   select  name,maths from  question_Set_6.student order by maths desc limit 1;
    select  name,physics from  question_Set_6.student order by physics desc limit 1;
  
  select  name ,tamil from  question_Set_6.student  where tamil=(select max(tamil) from question_Set_6.student) ;
  select name, english from question_Set_6.student where english =(select max(english) from question_set_6.student);
  select  name,chemistry from  question_Set_6.student  where chemistry=(select max(chemistry) from question_set_6.student);
 select  name,physics from  question_Set_6.student  where physics=(select max(physics) from question_set_6.student);
 select  name,maths from  question_Set_6.student  where maths=(select max(maths) from question_set_6.student);
   alter table question_Set_6.student   add column std int ,add sec int;
   update question_Set_6.student   set std=12 where id between 1 and 10;
    select *from  question_Set_6.student ;
    update question_Set_6.student   set sec='a' where id in (1,2,3);
    alter table question_Set_6.student  modify column sec char;
    update question_Set_6.student   set sec='b' where id in (4,5);
    update question_Set_6.student   set sec='c' where id in (6,7,8);
    update question_Set_6.student   set sec='a' where id in (9,10);
    select name, sec,physics as physics_passed from question_Set_6.student where physics >=35 ;  
    select *,(tamil+english+maths+physics+chemistry)
    as max_total from question_Set_6.student where (tamil+english+maths+physics+chemistry)
    =(select max((tamil+english+maths+physics+chemistry)) from question_Set_6.student);
    
     select *,(tamil+english+maths+physics+chemistry)
    as min_total from question_Set_6.student where (tamil+english+maths+physics+chemistry)
    =(select min((tamil+english+maths+physics+chemistry)) from question_Set_6.student);
    
   select name from question_Set_6.student where name =(select max(name) from question_Set_6.student) ;
     select *from question_Set_6.student;
select name,count(name) as  max_name   from question_Set_6.student group by name order by count(name)  desc limit 1; 

 --------------------------------------------- qn set 7 25/07/2022 -----------------------------------------
 create schema question_Set_7;
 
 create table question_Set_7.cricket_team(id int primary key,team varchar(10),matches int , won int,lost int,year year , foreign key(year) references trophy_winners(year));
 insert into  question_Set_7.cricket_team(id ,team ,matches, won ,lost ,year)
 values(1,"csk",14,4,10,2022),
          (2,"mi",14,4,10,2022),
            (3,"rcb",14,8,6,2022),
            (4,"lsg",14,9,5,2022),
            (5,"srh",14,6,8,2022),
            (6,"dc",14,8,6,2022),
            (7,"rr",14,9,5,2022),
            (8,"gl",14,10,4,2022),
            (9,"pbks",14,6,8,2022),
            (10,"kkr",14,6,8,2022);
 drop table question_Set_7.cricket_team;



select*from question_Set_7.cricket_team;
 create table question_Set_7.trophy_winners(year year primary key,winner varchar(6), runnerup varchar(6)) ;
 insert into  question_Set_7.trophy_winners(year ,winner, runnerup ) values(2022,"gl","rr"),
 (2023,"csk","mi"),
 (2024,"rcb","csk");
 select*From question_Set_7.trophy_winners;
 
 create table question_Set_7.cricket_team_1(id int primary key,team varchar(10),matches int , won int,lost int,year year , foreign key(year) references trophy_winners(year));
 insert into  question_Set_7.cricket_team_1(id ,team ,matches, won ,lost ,year)
 values(1,"csk",14,9,5,2023),
          (2,"mi",14,8,6,2023),
            (3,"rcb",14,6,8,2023),
            (4,"lsg",14,7,7,2023),
            (5,"srh",14,8,6,2023),
            (6,"dc",14,8,6,2023),
            (7,"rr",14,4,10,2023),
            (8,"gl",14,5,9,2023),
            (9,"pbks",14,6,8,2023),
            (10,"kkr",14,6,8,2023);
		
 select*from  question_Set_7.cricket_team_1;
 
  create table question_Set_7.cricket_team_2(id int primary key,team varchar(10),matches int , won int,lost int,year year , foreign key(year) references trophy_winners(year));
 insert into  question_Set_7.cricket_team_2(id ,team ,matches, won ,lost ,year)
 values(1,"csk",14,6,4,2024),
          (2,"mi",14,8,6,2024),
            (3,"rcb",14,9,5,2024),
            (4,"lsg",14,4,10,2024),
            (5,"srh",14,6,8,2024),
            (6,"dc",14,4,10,2024),
            (7,"rr",14,7,7,2024),
            (8,"gl",14,6,8,2024),
            (9,"pbks",14,5,9,2024),
            (10,"kkr",14,6,8,2024);
 drop table question_Set_7.cricket_team_2;
  select*from  question_Set_7.cricket_team_2;
select *
from  question_Set_7.cricket_team_1 
inner join  question_Set_7.cricket_team_2
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team_2.id
inner join  question_Set_7.cricket_team
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team.id;




select * from
(select *
from  question_Set_7.cricket_team_1 
inner join  question_Set_7.cricket_team_2
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team_2.id
inner join  question_Set_7.cricket_team
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team.id);

select team,won,lost,year from question_Set_7.cricket_team_2 
 inner join

(select team,won,lost,year from question_Set_7.cricket_team )as s
inner join 
(select team,won,lost,year from question_Set_7.cricket_team_1) as t
on question_Set_7.cricket_team_2.won=question_Set_7.cricket_team_1.won=question_Set_7.cricket_team;







select  (cricket_team_1.won+cricket_team_2.won+cricket_team.won )from (select*
from  question_Set_7.cricket_team_1 
inner join  question_Set_7.cricket_team_2
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team_2.id
inner join  question_Set_7.cricket_team
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team.id) as t;



select *
from  question_Set_7.cricket_team_1 
inner join  question_Set_7.cricket_team_2
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team_2.id
inner join  question_Set_7.cricket_team
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team.id;



select *
from  question_Set_7.cricket_team_1 
union select * from question_Set_7.cricket_team_2
 union select*from question_Set_7.cricket_team;
 select team, sum(won)/30*100 as percentage from (select *
from  question_Set_7.cricket_team_1 
inner join (select * from question_Set_7.cricket_team_2) t on cricket_team_1.won=cricket_team_2.won
 inner join( select*from question_Set_7.cricket_team) on (cricket_team_1.won=cricket_team.won;   




select team,(won+won+won) from (select *
from  question_Set_7.cricket_team_1 
inner join  question_Set_7.cricket_team_2
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team_2.id
inner join  question_Set_7.cricket_team
on  question_Set_7.cricket_team_1.id= question_Set_7.cricket_team.id) as t;







 
 select max(won), team ,year from question_Set_7.cricket_team;
 select team,year, (won/14 *100) as percentage from question_Set_7.cricket_team where (won/14 *100) =(select max(won/14 *100) from  question_Set_7.cricket_team) union
  select team,year, (won/14 *100) as percentage from question_Set_7.cricket_team_1 where (won/14 *100) =(select max(won/14 *100) from  question_Set_7.cricket_team_1) union
 select team,year, (won/14 *100) as percentage from question_Set_7.cricket_team_2 where (won/14 *100) =(select max(won/14 *100) from  question_Set_7.cricket_team_2);

select team,year, (lost/14 *100) as percentage from question_Set_7.cricket_team where (lost/14 *100) =(select max(lost/14 *100) from  question_Set_7.cricket_team) union
  select team,year, (lost/14 *100) as percentage from question_Set_7.cricket_team_1 where (lost/14 *100) =(select max(lost/14 *100) from  question_Set_7.cricket_team_1) union
 select team,year, (lost/14 *100) as percentage from question_Set_7.cricket_team_2 where (lost/14 *100) =(select max(lost/14 *100) from  question_Set_7.cricket_team_2);
 
 ------------------------------------------------------------------------------------
 create schema gopal;
 create table cricket_teams(id int primary key, cricket_team varchar(10),country varchar(15), total_matches int,2017_win int, 2017_loss int, 2018_win int,
2018_loss int,2019_win int,2019_loss int);
insert into  cricket_teams values(1,'India','India',10,6,4,5,5,3,7),
(2,'Pakistan','Pakistan',10,5,5,8,2,2,8),(3,'England','England',10,7,3,4,6,8,2),(4,'Australia','Australia',10,3,7,4,6,1,9),
(5,'SAfrica','South Africa',10,4,6,3,7,5,5),(6,'Windies','West indies',10,8,2,6,4,7,3),(7,'Afganistan','Afganistan',10,7,3,5,5,4,6),
(8,'Bangladesh','Bangladesh',10,2,8,3,7,1,9);
select*from cricket_teams;
alter table cricket_teams modify column cricket_team  varchar(15);
desc cricket_teams;
select*from cricket_teams;

-- get max and min win
select cricket_team,country,total_matches,(2017_win/10*100) as win_percentage from cricket_teams where (2017_win/10*100) =
(select max(2017_win/10*100) from cricket_teams)
union
select cricket_team,country,total_matches,(2018_win/10*100) as win_percentage from cricket_teams where (2018_win/10*100) =
(select max(2018_win/10*100) from cricket_teams)
union
select cricket_team,country,total_matches,(2019_win/10*100) as win_percentage from cricket_teams where (2019_win/10*100) =
(select max(2019_win/10*100) from cricket_teams);

select year,cricket_team,country,total_matches,(2017_loss/10*100) as loss_percentage from cricket_teams where (2017_loss/10*100) =
(select max(2017_loss/10*100) from cricket_teams)
union
select year,cricket_team,country,total_matches,(2018_loss/10*100) as loss_percentage from cricket_teams where (2018_loss/10*100) =
(select max(2018_loss/10*100) from cricket_teams)
union
select cricket_team,country,total_matches,(2019_loss/10*100) as loss_percentage from cricket_teams where (2019_loss/10*100) =
(select max(2019_loss/10*100) from cricket_teams);
---------------------------------------------------------------------------------------------------------------------------


 
 
 
 
 
 
 
 
 
 
 
 
 
 

