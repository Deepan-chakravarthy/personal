create schema T2;
use T2;
create table students (id int ,name varchar(20),age int,Email_id varchar(20),mobile_no bigint,street varchar(30),area varchar(20),
city varchar(30),district varchar(30),pincode int,state varchar(30),college_name varchar(30),college_code int,
college_door_no int,college_street varchar(30),college_area varchar(30),college_district varchar(30),college_pincode int,
college_state varchar(30),university_nmae varchar(30),semester int,tamil int,english int,maths int,physics int,chemistry int,biology int,passed_out_year year);
describe students;
select*from students;
insert into  students (id,name,age,Email_id ,mobile_no,street ,area ,city ,district,pincode,state ,tamil,english,maths,physics,chemistry,biology,college_name,college_code,
college_door_no,college_street,college_area ,college_district ,college_pincode,
college_state ,university_nmae,semester,passed_out_year) values (1,'sathiyaseelan','24','sathiya@gmail.com',7010556776,'malar street','veera nagar','mettur','salem',636404,'Tamilnadu',78,55,67,78,69,80,'SVM',167,278,'svn street','kaatteri','krishnagiri',636345,'Tamilnadu','Autonomous',3,2022);
insert into  students (id,name,age,Email_id ,mobile_no,street ,area ,city ,district,pincode,state ,tamil,english,maths,physics,chemistry,biology,college_name,college_code,
college_door_no,college_street,college_area ,college_district ,college_pincode,
college_state ,university_nmae,semester,passed_out_year) values 
(2,'sumandas','22','suman@gmail.com',7010897898,'suman street','singam nagar','madurai','madurai',638978,'Tamilnadu',89,67,73,53,84,92,'SVM',167,278,'svn street','kaatteri','krishnagiri',636345,'Tamilnadu','Autonomous',3,2022),
(3,'santhoshsan','22','sandy@gmail.com',7010890011,'sandy street','kayal nagar','thiruvanaamalai','thiruvanaamalai',638979,'Tamilnadu',35,50,47,70,50,77,'SGH',222,308,'sgh street','thirupathoor','krishnagiri',636340,'Tamilnadu','yx university',3,2022),
(4,'surrendhar','22','avenger@gmail.com',7022897898,'gandhi street','siruthai nagar','kadaloore','kadaloore',639078,'Tamilnadu',78,50,60,70,60,67,'SGH',222,308,'sgh street','thirupathoor','krishnagiri',636340,'Tamilnadu','yx university',4,2022),
(5,'lenninlento','22','lennin@gmail.com',7010097898,'lennin street','karadi nagar','thiruchi','thiruchi',648978,'Tamilnadu',70,50,60,70,50,80,'SNJ',444,789,'snj street','tirchy','tirchy',646340,'Tamilnadu','xy university',4,2022),
(6,'Antoadvento','22','Anto@gmail.com',8010897898,'Anto street','Anto nagar','thiruchi','thiruchi',637978,'Tamilnadu',40,44,60,80,60,67,'SNJ',444,789,'snj street','tirchy','tirchy',646340,'Tamilnadu','xy university',4,2022),
(7,'gabigabiryel','22','Gabi@gmail.com',9010897898,'Gabi street','cheeta nagar','Ambur','Ambur',658978,'Tamilnadu',55,65,65,70,50,97,'SGH',222,308,'sgh street','thirupathoor','krishnagiri',636340,'Tamilnadu','yx university',4,2022),
(8,'mukeshkumar','22','mukesh@gmail.com',7090897898,'kovi street','malapula nagar','thiruvanathapuram','thiruvanathapuram',638978,'Kerala',90,50,60,70,88,69,'SVM',167,278,'svn street','kaatteri','krishnagiri',636345,'Tamilnadu','Autonomous',4,2022),
(9,'juhngopal','22','juhn@gmail.com',8090897898,'juhn street','kathi nagar','chennai','chennai',600024,'Tamilnadu',80,50,60,70,50,98,'SGH',222,308,'sgh street','thirupathoor','krishnagiri',636340,'Tamilnadu','yx university',4,2022),
(10,'michealjackshon','22','michael@gmail.com',9878897898,'mickel street','karadi nagar','chennai','chennai',638808,'Tamilnadu',90,50,90,70,50,87,'SGH',222,308,'sgh street','thirupathoor','krishnagiri',636340,'Tamilnadu','yx university',4,2022),
(1,'sathiyaseelan','24','sathiya@gmail.com',7010556776,'malar street','veera nagar','mettur','salem',636404,'Tamilnadu',80,65,67,77,79,81,'SVM',167,278,'svn street','kaatteri','krishnagiri',636345,'Tamilnadu','Autonomous',4,2022),
(2,'sumandas','22','suman@gmail.com',7010897898,'suman street','singam nagar','madurai','madurai',638978,'Tamilnadu',69,67,74,53,64,92,'SVM',167,278,'svn street','kaatteri','krishnagiri',636345,'Tamilnadu','Autonomous',4,2022),
(3,'santhoshsan','22','sandy@gmail.com',7010890011,'sandy street','kayal nagar','thiruvanaamalai','thiruvanaamalai',638979,'Tamilnadu',55,55,67,77,55,77,'SGH',222,308,'sgh street','thirupathoor','krishnagiri',636340,'Tamilnadu','yx university',3,2022),
(4,'surrendhar','22','avenger@gmail.com',7022897898,'gandhi street','siruthai nagar','kadaloore','kadaloore',639078,'Tamilnadu',88,90,65,77,50,57,'SGH',222,308,'sgh street','thirupathoor','krishnagiri',636340,'Tamilnadu','yx university',3,2022),
(5,'lenninlento','22','lennin@gmail.com',7010097898,'lennin street','karadi nagar','thiruchi','thiruchi',648978,'Tamilnadu',77,80,60,90,50,80,'SNJ',444,789,'snj street','tirchy','tirchy',646340,'Tamilnadu','xy university',3,2022);
alter table students add column first_name varchar(30) after name;
alter table students add column last_name varchar(30) after first_name;

update students set first_name = 'sathiya'where id=1;
update students set first_name = 'suman'where id=2;
update students set first_name = 'santhosh'where id=3;
update students set first_name = 'surrendar'where id=4;
update students set first_name = 'lennin'where id=5;
update students set first_name = 'anto'where id=6;
update students set first_name = 'gabi'where id=7;
update students set first_name = 'mukesh'where id=8;
update students set first_name = 'juhn'where id=9;
update students set first_name = 'micheal'where id=10;

update students set last_name = 'seelan'where id=1;
update students set last_name = 'das'where id=2;
update students set last_name = 'shan'where id=3;
update students set last_name = 'rendhar'where id=4;
update students set last_name = 'lento'where id=5;
update students set last_name = 'advento'where id=6;
update students set last_name = 'gabiryel'where id=7;
update students set last_name = 'KUMAR'where id=8;
update students set last_name = 'gopal'where id=9;
update students set last_name = 'jackshon'where id=10;

select * from students;

alter table students add column Aadhaar_no varchar(10) after age;
update students set Aadhaar_no='yes' where id in(1,3,5,7,9);
update students set Aadhaar_no='no' where id in(2,4,6,8,10);
update students set Aadhaar_no=1 where Aadhaar_no='yes';
update students set Aadhaar_no=0 where Aadhaar_no='no';
alter table students modify Aadhaar_no boolean;
select*from students;

------------ particular student semester wise avg mark --------------------
-- select semester,avg(tamil+english+maths+physics+chemistry+biology)/6 as Avg_marks from students group by semester ; 
-- select name,semester,avg(tamil+english+maths+physics+chemistry+biology)/6 as Avg_marks from students;
select name,semester,(tamil+english+maths+physics+chemistry+biology)/6 as Avg_marks from students;

----------------------------- 

alter table students rename column university_nmae  to university_name;
alter table students add Degree varchar(30) after university_name;
alter table students add Department varchar(30) after Degree;

update students set Degree = 'B.sc'where id in (1,2,7,10);
update students set Degree = 'Mpill'where id=8;
update students set Degree = 'PG'where id in (4,5,6);
update students set Degree = 'M.sc'where id in (3,9);

update students set Department = 'Maths'where id in (1,2,7,10);
update students set Department = 'Physics'where id=8;
update students set Department = 'MCA'where id in (4,5,6);
update students set Department = 'CSS'where id in (3,9);


----------- semester wise and department wise ---------------------
select name, age, email,english from students
select  max(english) from students
select semester,max(tamil),max(english),max(maths),max(physics),max(chemistry),max(biology) from students  group by semester;
select semester,min(tamil),min(english),min(maths),min(physics),min(chemistry),min(biology) from students  group by semester;
select semester,max(tamil+english+maths+physics+chemistry+biology) as maximum_marks from students group by semester;
select Department,max(tamil+english+maths+physics+chemistry+biology) as maximum_marks from students group by Department;


------------- over all college wise max mark ------------
select college_name,passed_out_year,max(tamil+english+maths+physics+chemistry+biology) as first_mark from students where passed_out_year=2022;
----------------------------------------

select id,name,tamil from students;
select max(tamil) as max_tamil from (select id,name,tamil from students) as t;
select * from (select id,name,tamil from students) as tu where tu.tamil=(select max(tamil) as max_tamil from (select id,name,tamil from students) as t);
select * from (select id,name,english from students) as tu where tu.english=(select max(english) as max_english from (select id,name,english from students) as t);
select * from (select id,name,maths from students) as tu where tu.maths=(select max(maths) as max_maths from (select id,name,maths from students) as t);
select * from (select id,name,physics from students) as tu where tu.physics=(select max(physics) as max_physics from (select id,name,physics from students) as t);
select * from (select id,name,chemistry from students) as tu where tu.chemistry=(select max(chemistry) as max_chemistry from (select id,name,chemistry from students) as t);
select * from (select id,name,biology from students) as tu where tu.biology=(select max(biology) as max_biology from (select id,name,biology from students) as t);


select * from students;
select distinct * from (select * from (select id,name,tamil from students) as tu where tu.tamil=(select max(tamil) as max_tamil from (select id,name,tamil from students) as t)) as tu,
(select * from (select id,name,english from students) as tu where tu.english=(select max(english) as max_english from (select id,name,english from students) as t)) as gu,
(select * from (select id,name,maths from students) as tu where tu.maths=(select max(maths) as max_maths from (select id,name,maths from students) as t)) as fu,
(select * from (select id,name,physics from students) as tu where tu.physics=(select max(physics) as max_physics from (select id,name,physics from students) as t)) as du,
(select * from (select id,name,chemistry from students) as tu where tu.chemistry=(select max(chemistry) as max_chemistry from (select id,name,chemistry from students) as t)) as hu,
(select * from (select id,name,biology from students) as tu where tu.biology=(select max(biology) as max_biology from (select id,name,biology from students) as t)) as cu limit 1;