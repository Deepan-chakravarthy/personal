create schema hemanth;
create table hemanth.employ_table (id int, name varchar(20),email varchar(50),age int,marks int );
drop table   hemanth.employ_table;
create table hemanth.employ_table (id int, name varchar(20),email varchar(50),age int,marks int,ranks int);
insert into hemanth.employ_table  (id,name,email,age,marks,ranks) values
(1,'Raju kumar','raju@gmail.com',35,90,2),
(2,'Ramesh Kumar','ramesh@g.com',40,81,3),
(3,'Suresh Babu','suresh@g.com',42,72,4),
(4,'Balaji','bala@g.com',70,65,6),
(5,'Kajith Raju','kaj@g.com',63,40,7),
(6,'Gowtham Kumar','gow@g.com',47,69,5),
(7,'Mohan Kumar','moh@g.com',40,72,4),
(8,'Harish Ram','har@g.com',36,90,2),
(9,'SathyaRaj','sat@g.com',38,99,1),
(10,'Rajaram Mohan','rajmohan@g.com',42,81,3);

select * from hemanth.employ_table;

select * from hemanth.employ_table where age > 37  and age < 60 ;
select name,ranks from hemanth.employ_table where age between 37 and 60 and marks>45 and name like"%kumar";
select * from (select * from hemanth.employ_table where age > 37  and age< 60 ) as result1 where marks >45 and name like"%kumar" ;



select ranks,name from  (select * from (select * from hemanth.employ_table where age > 37  and age< 60 ) as result1 where marks >45 and 
name like"%kumar") as result3;

select * from hemanth.employ_table where name like"%ra%" and (age>40 or marks>75);

-------------------



select* from hemanth.employ_table;

select *from hemanth.employ_table where name like"%ja%"  or name like "%ma%" or name like"%ta%" or name like"%aj%" or name like"%am%" or name like"%aj%";


alter table hemanth.employ_table add column last_name varchar(20);



update hemanth.employ_table set last_name="ashokkumar" where id=1;
set sql_safe_updates=0;
update hemanth.employ_table set last_name="ganeshkumar" where id=2;
update hemanth.employ_table set last_name="givindraj" where id=3;
update hemanth.employ_table set last_name="dineshkumar" where id=4;
update hemanth.employ_table set last_name="gopi" where id=5;
update hemanth.employ_table set last_name="kavi" where id=6;
update hemanth.employ_table set last_name="senthilkumar" where id=7;
update hemanth.employ_table set last_name="kannan" where id=8;
update hemanth.employ_table set last_name="muthukumar" where id=9;
update hemanth.employ_table set last_name="hari" where id=10;


select*from hemanth.employ_table;

select name,last_name from hemanth.employ_table where name like"%kumar%" and last_name like"%kumar%";



-----

create schema assignment3;
create table assignment3.student_table(id int,name varchar(20),age int, email_id varchar(20),mob_num bigint,street varchar(20),area varchar(20),
city varchar(20),district varchar(20),pincode int, state varchar(20),clg_name varchar(20),clg_code varchar(20),university_name varchar(20),
semester int,english int,tamil int,maths int, physics int, chemistry int, biology int,clg_doorno int, clg_street varchar(20),clg_area varchar(20),
clg_city varchar(10),clg_district varchar(10),clg_pincode int, clg_state int, passed_out_year int,first_name varchar(30),last_name varchar(20));

describe assignment3.student_table;

insert assignment3.student_table (id,name,age,email_id,mob_num,street,area,city,district,pincode,state,clg_name,clg_code,university_name,
semester,english,tamil,maths,physics,chemistry,biology,clg_doorno,clg_street,clg_area,clg_city,clg_district,clg_pincode,clg_state,passed_out_year,first_name,last_name) values
(1,"hemanth_kumar",22,"hemanth@gmail.com",9994402009,"am_kov_st","krishnapuram","ambur","tirupattur",635802,"tamilnadu","kmg",34443,"thiru_university",
1,45,57,78,90,39,66,345,"new_street","kmg_area","kmg_city","kmg_dist",34523,"tamil_nadu",2020,"hemanth","kumar"),
(2,"dinesh_kumar",24,"dinesh@gmail.com",9994402009,"elai_kov_st","sripuram","madhanur","tirupattur",635802,"tamilnadu","umg",34440,"thiru_university",
1,40,55,88,50,59,56,375,"old_street","umg_area","umg_city","umg_dist",32523,"tamil_nadu",2021,"dinesh","kumar"),
(3,"ramesh_kumar",20,"ramesh@gmail.com",9994400009,"elai_kov_st","sripuram","vaniyambadi","tirupurr",625802,"tamilnadu","lmg",34490,"thiru_university",
3,70,50,88,59,99,90,375,"old_street","lmg_area","lmg_city","lmg_dist",32593,"tamil_nadu",2021,"ramesh","kumar"),
(4,"suresh_kumar",29,"suresh@gmail.com",9994432009,"vina_st","indira_nagar","ambur","tirupurr",625892,"tamilnadu","pmg",34790,"thiru_university",
4,75,50,58,79,69,96,365,"little_street","pmg_area","pmg_city","pmg_dist",32593,"tamil_nadu",2021,"suresh","kumar"),
(5,"ram_kumar",39,"ram@gmail.com",9993432009,"r_kov_st","ram_nagar","vellore","vellore",625852,"tamilnadu","amg",34330,"bhar_university",
5,35,54,58,79,59,46,367,"down_street","amg_area","amg_city","amg_dist",32596,"tamil_nadu",2019,"ram","kumar"),
(6,"rohit_kumar",29,"rohit@gmail.com",9992432009,"ro_kov_st","rohit_nagar","salem","salem",627852,"tamilnadu","dmg",34370,"bhar_university",
3,35,55,58,69,79,36,567,"down_street","dmg_area","dmg_city","dmg_dist",32536,"tamil_nadu",2020,"rohit","kumar"),
(7,"manesh_kumar",49,"manesh@gmail.com",9932432009,"ma_kov_st","manesh_nagar","edapadi","salem",627352,"tamilnadu","jmg",34337,"bhar_university",
2,45,45,48,49,49,46,667,"up_street","jmg_area","jmg_city","jmg_dist",38536,"tamil_nadu",2017,"manesh","kumar"),
(8,"yugi_kumar",49,"yugi@gmail.com",6932432009,"y_kov_st","yugi_nagar","valapadi","salem",627322,"tamilnadu","ymg",34397,"bhar_university",
2,55,46,42,59,70,96,668,"cross_street","ymg_area","ymg_city","ymg_dist",38535,"tamil_nadu",2015,"yugi","kumar"),
(9,"amar_kumar",49,"amr@gmail.com",8932432009,"amr_kov_t","amr_nagar","arani","vellore",657322,"tamilnadu","dmg",34392,"bhar_university",
2,56,48,49,89,79,95,666,"mingle_street","dmg_area","dmg_city","dmg_dist",38567,"tamil_nadu",2018,"amar","kumar"),
(10,"umar_kumar",89,"umar@gmail.com",8932332009,"ur_kov_st","umar_nagar","madanur","vellore",657822,"tamilnadu","tmg",34592,"bhar_university",
3,51,58,49,89,99,98,666,"light_street","tmg_area","tmg_city","tmg_dist",38577,"tamil_nadu",2018,"umar","kumar");

drop schema assignment3;
---------
create schema assignment3;
create table assignment3.student_table(id int,name varchar(30),age int, email_id varchar(30),mob_num bigint,street varchar(30),area varchar(30),
city varchar(20),district varchar(30),pincode int, state varchar(30),clg_name varchar(30),clg_code varchar(30),university_name varchar(30),
semester int,english int,tamil int,maths int, physics int, chemistry int, biology int,clg_doorno int, clg_street varchar(30),clg_area varchar(30),
clg_city varchar(30),clg_district varchar(30),clg_pincode int, clg_state int, passed_out_year int,first_name varchar(30),last_name varchar(20));


describe assignment3.student_table;

insert assignment3.student_table (id,name,age,email_id,mob_num,street,area,city,district,pincode,state,clg_name,clg_code,university_name,
semester,english,tamil,maths,physics,chemistry,biology,clg_doorno,clg_street,clg_area,clg_city,clg_district,clg_pincode,clg_state,passed_out_year,first_name,last_name) values
(1,"hemanth_kumar",22,"hemanth@gmail.com",9994402009,"gangai_street","krishnapuram","ambur","tirupattur",635802,"tamilnadu","kmg",34443,"thiru_university",
1,45,57,78,90,39,66,345,"new_street","kmg_area","kmg_city","kmg_district",34523,"tamil_nadu",2020,"hemanth","kumar"),
(2,"dinesh_kumar",24,"dinesh@gmail.com",9994402009,"elai_amman_street","sripuram","madhanur","tirupattur",635802,"tamilnadu","umg",34440,"thiru_university",
1,40,55,88,50,59,56,375,"old_street","umg_area","umg_city","umg_district",32523,"tamil_nadu",2021,"dinesh","kumar"),
(3,"ramesh_kumar",20,"ramesh@gmail.com",9994400009,"elai_amman_street","sripuram","vaniyambadi","tirupurr",625802,"tamilnadu","lmg",34490,"thiru_university",
3,70,50,88,59,99,90,375,"old_street","lmg_area","lmg_city","lmg_district",32593,"tamil_nadu",2021,"ramesh","kumar"),
(4,"suresh_kumar",29,"suresh@gmail.com",9994432009,"vinayagar_amman_street","indira_nagar","ambur","tirupurr",625892,"tamilnadu","pmg",34790,"thiru_university",
4,75,50,58,79,69,96,365,"little_street","pmg_area","pmg_city","pmg_district",32593,"tamil_nadu",2021,"suresh","kumar"),
(5,"ram_kumar",39,"ram@gmail.com",9993432009,"ram_kovil_street","ram_nagar","vellore","vellore",625852,"tamilnadu","amg",34330,"bharath_university",
5,35,54,58,79,59,46,367,"down_street","amg_area","amg_city","amg_district",32596,"tamil_nadu",2019,"ram","kumar"),
(6,"rohit_kumar",29,"rohit@gmail.com",9992432009,"rohit_street","rohit_nagar","salem","salem",627852,"tamilnadu","dmg",34370,"bharath_university",
3,35,55,58,69,79,36,567,"down_street","dmg_area","dmg_city","dmg_district",32536,"tamil_nadu",2020,"rohit","kumar"),
(7,"manesh_kumar",49,"manesh@gmail.com",9932432009,"manesh_street","manesh_nagar","edapadi","salem",627352,"tamilnadu","jmg",34337,"bharath_university",
2,45,45,48,49,49,46,667,"up_street","jmg_area","jmg_city","jmg_district",38536,"tamil_nadu",2017,"manesh","kumar"),
(8,"yugi_kumar",49,"yugi@gmail.com",6932432009,"yugi_street","yugi_nagar","valapadi","salem",627322,"tamilnadu","ymg",34397,"bharath_university",
2,55,46,42,59,70,96,668,"cross_street","ymg_area","ymg_city","ymg_district",38535,"tamil_nadu",2015,"yugi","kumar"),
(9,"amar_kumar",49,"amr@gmail.com",8932432009,"amr_street","amr_nagar","arani","vellore",657322,"tamilnadu","dmg",34392,"bharath_university",
2,56,48,49,89,79,95,666,"mingle_street","dmg_area","dmg_city","dmg_district",38567,"tamil_nadu",2018,"amar","kumar"),
(10,"umar_kumar",89,"umar@gmail.com",8932332009,"umar_street","umar_nagar","madanur","vellore",657822,"tamilnadu","tmg",34592,"bharath_university",
3,51,58,49,89,99,98,666,"light_street","tmg_area","tmg_city","tmg_district",38577,"tamil_nadu",2018,"umar","kumar");




drop schema assignment3;
-----
create schema assignment3;
create table assignment3.student_table(id int,name varchar(30),age int, email_id varchar(30),mob_num bigint,street varchar(30),area varchar(30),
city varchar(20),district varchar(30),pincode int, state varchar(30),clg_name varchar(30),clg_code varchar(30),university_name varchar(30),
semester int,english int,tamil int,maths int, physics int, chemistry int, biology int,clg_doorno int, clg_street varchar(30),clg_area varchar(30),
clg_city varchar(30),clg_district varchar(30),clg_pincode int, clg_state varchar(30), passed_out_year int,first_name varchar(30),last_name varchar(20));
describe assignment3.student_table;


insert assignment3.student_table (id,name,age,email_id,mob_num,street,area,city,district,pincode,state,clg_name,clg_code,university_name,
semester,english,tamil,maths,physics,chemistry,biology,clg_doorno,clg_street,clg_area,clg_city,clg_district,clg_pincode,clg_state,passed_out_year,first_name,last_name) values
(1,"hemanth_kumar",22,"hemanth@gmail.com",9994402009,"gangai_street","krishnapuram","ambur","tirupattur",635802,"tamilnadu","kmg",34443,"thiru_university",
1,45,57,78,90,39,66,345,"new_street","kmg_area","kmg_city","kmg_district",34523,"tamil_nadu",2020,"hemanth","kumar"),
(2,"dinesh_kumar",24,"dinesh@gmail.com",9994402009,"elai_amman_street","sripuram","madhanur","tirupattur",635802,"tamilnadu","umg",34440,"thiru_university",
1,40,55,88,50,59,56,375,"old_street","umg_area","umg_city","umg_district",32523,"tamil_nadu",2021,"dinesh","kumar"),
(3,"ramesh_kumar",20,"ramesh@gmail.com",9994400009,"elai_amman_street","sripuram","vaniyambadi","tirupurr",625802,"tamilnadu","lmg",34490,"thiru_university",
3,70,50,88,59,99,90,375,"old_street","lmg_area","lmg_city","lmg_district",32593,"tamil_nadu",2021,"ramesh","kumar"),
(4,"suresh_kumar",29,"suresh@gmail.com",9994432009,"vinayagar_amman_street","indira_nagar","ambur","tirupurr",625892,"tamilnadu","pmg",34790,"thiru_university",
4,75,50,58,79,69,96,365,"little_street","pmg_area","pmg_city","pmg_district",32593,"tamil_nadu",2021,"suresh","kumar"),
(5,"ram_kumar",39,"ram@gmail.com",9993432009,"ram_kovil_street","ram_nagar","vellore","vellore",625852,"tamilnadu","amg",34330,"bharath_university",
5,35,54,58,79,59,46,367,"down_street","amg_area","amg_city","amg_district",32596,"tamil_nadu",2019,"ram","kumar"),
(6,"rohit_kumar",29,"rohit@gmail.com",9992432009,"rohit_street","rohit_nagar","salem","salem",627852,"tamilnadu","dmg",34370,"bharath_university",
3,35,55,58,69,79,36,567,"down_street","dmg_area","dmg_city","dmg_district",32536,"tamil_nadu",2020,"rohit","kumar"),
(7,"manesh_kumar",49,"manesh@gmail.com",9932432009,"manesh_street","manesh_nagar","edapadi","salem",627352,"tamilnadu","jmg",34337,"bharath_university",
2,45,45,48,49,49,46,667,"up_street","jmg_area","jmg_city","jmg_district",38536,"tamil_nadu",2017,"manesh","kumar"),
(8,"yugi_kumar",49,"yugi@gmail.com",6932432009,"yugi_street","yugi_nagar","valapadi","salem",627322,"tamilnadu","ymg",34397,"bharath_university",
2,55,46,42,59,70,96,668,"cross_street","ymg_area","ymg_city","ymg_district",38535,"tamil_nadu",2015,"yugi","kumar"),
(9,"amar_kumar",49,"amr@gmail.com",8932432009,"amr_street","amr_nagar","arani","vellore",657322,"tamilnadu","dmg",34392,"bharath_university",
2,56,48,49,89,79,95,666,"mingle_street","dmg_area","dmg_city","dmg_district",38567,"tamil_nadu",2018,"amar","kumar"),
(10,"umar_kumar",89,"umar@gmail.com",8932332009,"umar_street","umar_nagar","madanur","vellore",657822,"tamilnadu","tmg",34592,"bharath_university",
3,51,58,49,89,99,98,666,"light_street","tmg_area","tmg_city","tmg_district",38577,"tamil_nadu",2018,"umar","kumar");


---- crt statement -----


drop schema assignment3;
create schema assignment3;
create table assignment3.student_table(id int,name varchar(30),age int, email_id varchar(30),mob_num bigint,street varchar(30),area varchar(30),
city varchar(20),district varchar(30),pincode int, state varchar(30),clg_name varchar(30),clg_code varchar(30),university_name varchar(30),
semester int,english int,tamil int,maths int, physics int, chemistry int, biology int,clg_doorno int, clg_street varchar(30),clg_area varchar(30),
clg_city varchar(30),clg_district varchar(30),clg_pincode int, clg_state varchar(30), passed_out_year int,first_name varchar(30),last_name varchar(20));

insert assignment3.student_table (id,name,age,email_id,mob_num,street,area,city,district,pincode,state,clg_name,clg_code,university_name,
semester,english,tamil,maths,physics,chemistry,biology,clg_doorno,clg_street,clg_area,clg_city,clg_district,clg_pincode,clg_state,passed_out_year,first_name,last_name) values
(1,"hemanth_kumar",22,"hemanth@gmail.com",9994402009,"gangai_street","krishnapuram","ambur","tirupattur",635802,"tamilnadu","kmg",34443,"thiru_university",
1,45,57,78,90,39,66,345,"new_street","kmg_area","kmg_city","kmg_district",34523,"tamil_nadu",2020,"hemanth","kumar"),
(2,"dinesh_kumar",24,"dinesh@gmail.com",9994402009,"elai_amman_street","sripuram","madhanur","tirupattur",635802,"tamilnadu","umg",34440,"thiru_university",
1,40,55,88,50,59,56,375,"old_street","umg_area","umg_city","umg_district",32523,"tamil_nadu",2021,"dinesh","kumar"),
(3,"ramesh_kumar",20,"ramesh@gmail.com",9994400009,"elai_amman_street","sripuram","vaniyambadi","tirupurr",625802,"tamilnadu","lmg",34490,"thiru_university",
3,70,50,88,59,99,90,375,"old_street","lmg_area","lmg_city","lmg_district",32593,"tamil_nadu",2021,"ramesh","kumar"),
(4,"suresh_kumar",29,"suresh@gmail.com",9994432009,"vinayagar_amman_street","indira_nagar","ambur","tirupurr",625892,"tamilnadu","pmg",34790,"thiru_university",
4,75,50,58,79,69,96,365,"little_street","pmg_area","pmg_city","pmg_district",32593,"tamil_nadu",2021,"suresh","kumar"),
(5,"ram_kumar",39,"ram@gmail.com",9993432009,"ram_kovil_street","ram_nagar","vellore","vellore",625852,"tamilnadu","amg",34330,"bharath_university",
5,35,54,58,79,59,46,367,"down_street","amg_area","amg_city","amg_district",32596,"tamil_nadu",2019,"ram","kumar"),
(6,"rohit_kumar",29,"rohit@gmail.com",9992432009,"rohit_street","rohit_nagar","salem","salem",627852,"tamilnadu","dmg",34370,"bharath_university",
3,35,55,58,69,79,36,567,"down_street","dmg_area","dmg_city","dmg_district",32536,"tamil_nadu",2020,"rohit","kumar"),
(7,"manesh_kumar",49,"manesh@gmail.com",9932432009,"manesh_street","manesh_nagar","edapadi","salem",627352,"tamilnadu","jmg",34337,"bharath_university",
2,45,45,48,49,49,46,667,"up_street","jmg_area","jmg_city","jmg_district",38536,"tamil_nadu",2017,"manesh","kumar"),
(8,"yugi_kumar",49,"yugi@gmail.com",6932432009,"yugi_street","yugi_nagar","valapadi","salem",627322,"tamilnadu","ymg",34397,"bharath_university",
2,55,46,42,59,70,96,668,"cross_street","ymg_area","ymg_city","ymg_district",38535,"tamil_nadu",2015,"yugi","kumar"),
(9,"amar_kumar",49,"amr@gmail.com",8932432009,"amr_street","amr_nagar","arani","vellore",657322,"tamilnadu","dmg",34392,"bharath_university",
2,56,48,49,89,79,95,666,"mingle_street","dmg_area","dmg_city","dmg_district",38567,"tamil_nadu",2018,"amar","kumar"),
(10,"umar_kumar",89,"umar@gmail.com",8932332009,"umar_street","umar_nagar","madanur","vellore",657822,"tamilnadu","tmg",34592,"bharath_university",
3,51,58,49,89,99,98,666,"light_street","tmg_area","tmg_city","tmg_district",38577,"tamil_nadu",2018,"umar","kumar");

select * from assignment3.student_table;

alter table assignment3.student_table add column  adhar varchar(20); 

update assignment3.student_table  set adhar="yes" where id in (1,3,5,7,9);
set sql_safe_updates=0;
update assignment3.student_table set adhar="no" where id in(2,4,6,8,10);

update assignment3.student_table set adhar=1 where adhar="yes";
set sql_safe_updates=0;
update assignment3.student_table set adhar=0 where adhar="no";

alter table assignment3.student_table modify column adhar boolean;

describe assignment3.student_table;

select semester,name from  assignment3.student_table ;

select semester, avg (english+tamil+maths+physics+chemistry+biology)/6 from assignment3.student_table  as average group by semester order by semester;

alter table assignment3.student_table add column degree varchar(20);
alter table assignment3.student_table add column department varchar(20);
select * from assignment3.student_table;

update assignment3.student_table set degree="ug"  where id in (1,3,5,6,7,9);
update assignment3.student_table set degree="pg" where id in (2,4,6,8,10);

update assignment3.student_table set department="chemistry" where id in(1,2,3);
update assignment3.student_table set department="physics" where id in(4,5,6);
update assignment3.student_table set department="maths" where id in (7,8,9);
update assignment3.student_table set department="english" where id in (10);


select name,clg_name,semester,department,passed_out_year, avg(english+tamil+maths+physics+chemistry+biology) from assignment3.student_table as average_mark group by department order by semester;


select  passed_out_year from ( select name,clg_name,semester,department,passed_out_year, avg(english+tamil+maths+physics+chemistry+biology)/6 from assignment3.student_table group by department order by semester) as overall group by passed_out_year order by clg_name desc;

select max(tamil) from assignment3.student_table;
select max(english) from assignment3.student_table;
select max(maths) from assignment3.student_table;
select max(physics) from assignment3.student_table;
select max(chemistry) from assignment3.student_table;
select max(biology) from assignment3.student_table;

select min(tamil) from assignment3.student_table;
select min(english) from assignment3.student_table;
select min(maths) from assignment3.student_table;
select min(physics) from assignment3.student_table;
select min(chemistry) from assignment3.student_table;
select min(biology) from assignment3.student_table;

select avg(tamil) from assignment3.student_table;
select avg(english) from assignment3.student_table;
select avg(maths) from assignment3.student_table;
select avg(physics) from assignment3.student_table;
select avg(chemistry) from assignment3.student_table;
select avg(biology) from assignment3.student_table;

select semester,max(tamil),max(english),max(maths),max(physics),max(chemistry),max(biology) from assignment3.student_table group by semester;
select semester ,min(tamil),min(english),min(maths),min(physics),min(chemistry),min(biology) from assignment3.student_table group by semester;
select semester ,avg(tamil),avg(english),avg(maths),avg(physics),avg(chemistry),avg(biology) from assignment3.student_table group by semester;

select semester, max(tamil+english+maths+physics+chemistry+biology) from assignment3.student_table group by semester;


select semester, max(tamil+english+maths+physics+chemistry+biology) from assignment3.student_table as particular_year where passed_out_year=2019;
