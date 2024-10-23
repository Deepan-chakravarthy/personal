create schema col_stu;
use col_stu;


create table stu_detials(id int ,
name varchar(20),  
age int ,
email_id varchar(20),
molibe_number bigint,
door_no varchar(30), 
street varchar (20),
area varchar (20),
city varchar (10),
district varchar (20),
pincode int ,
state varchar (20),
col_name varchar(20),
col_code int,
univ_name varchar(20),
semester int,
tamil int,
english int,
maths int,
physics int,
chemistry int,
biology int,
col_dn varchar(20),
col_str varchar(20),
col_area varchar(20),
col_city varchar(20),
col_dist varchar(20),
col_pinc int ,
col_st varchar(20),
p_out_yr int);

desc stu_detials;

alter table stu_detials add first_name varchar(30);
alter table stu_detials add last_name varchar(20);
alter table stu_detials add aadhar varchar (6);

insert into stu_detials 
(id ,name ,  age ,email_id ,molibe_number ,door_no , street ,area ,city,district ,pincode  ,state,col_name  ,col_code ,
univ_name ,semester ,tamil ,english ,maths ,physics ,chemistry,biology ,
col_dn ,col_str ,col_area ,col_city ,col_dist ,col_pinc ,col_st ,p_out_yr,first_name, last_name, aadhar) values
 (1, 'tamil', 23,'tamil@',9999999991,'dno.1','1st street','mani nagar','vvn','villupuram',605602,'tn', 'sjc',100,
 ' thiruvalluvar',1,67,78,89,90,98,98,'dn.11','12th street','manjakupam','cuddalore','cuddalore',605670,'tn',2020, 'tamil','saravanan', 'yes');
 
 select * from stu_detials;
 
 insert into stu_detials 
(id ,name ,  age ,email_id ,molibe_number ,door_no , street ,area ,city,district ,pincode  ,state,col_name  ,col_code ,
univ_name ,semester ,tamil ,english ,maths ,physics ,chemistry,biology ,
col_dn ,col_str ,col_area ,col_city ,col_dist ,col_pinc ,col_st ,p_out_yr,first_name, last_name, aadhar) values
 (2, 'mani', 22,'mani@',9999999922,'dno.2','2nd street','best nagar','veedur','villupuram',605602,'tn', 'sjc',100,
 ' thiruvalluvar',1,77,78,89,90,99,98,'dn.11','12th street','manjakupam','cuddalore','cuddalore',605670,'tn',2020, 'mani','arasi', 'no'),
 
 (3, 'ravi', 34,'ravi@',9999999923,'dno.3','4th street','mass nagar','valavanur','cuddalore',605672,'tn', 'mec',102,
 ' annamalai',2,44,78,45,90,67,98,'dn.101','102th street','milton','velore','velore',605678,'tn',2020, 'ravi','sharma', 'yes'),
 (4, 'akil', 33,'akil@',9999999924,'dno.4','4th street','kavi nagar','thenur','cuddalore',605602,'tn', 'mec',102,
 ' annamalai',2,67,78,89,67,98,98,'dn.101','102th street','milton','velore','velore',605678,'tn',2020, 'akil','amar', 'yes'),
 
 (5, 'vijay', 24,'vijay@',9999999925,'dno.5','5th street','gobi nagar','villiyanur','thiruvallur',605802,'tn', 'knc',103,
 ' anna uni',3,67,78,56,90,98,98,'dn.110','128th street','salamedu','chennai','chennai',605670,'tn',2020, 'vijay','saravanan', 'no'),
 (6, 'raja', 25,'raja@',9999999936,'dno.6','6th street','gobi nagar','villiyanur','thiruvallur',605802,'tn', 'knc',103,
 '  anna uni',3,67,78,89,90,89,98,'dn.110','128th street','salamedu','chennai','chennai',605670,'tn',2020, 'raja','kannan', 'no'),
 (7, 'pushpa', 26,'pushpa@',9999999948,'dno.7','2nd street','ramar nagar','koottaiyur','villupuram',605642,'tn', 'knc',103,
 '  anna uni',3,67,55,89,90,77,98,'dn.110','128th street','salamedu','chennai','chennai',605670,'tn',2020, 'pushpa','vijay', 'yes'),
 
 (8, 'bala', 27,'bala@',9999999990,'dno.8','vijay street','senthil nagar','kedar','villupuram',605402,'tn', 'tawc',110,
 ' madurai',4,67,55,09,90,90,98,'dn.131','312th street','anbu nagar','thiruchy','thiruchy',605690,'tn',2020, 'bala','ram', 'yes'),
 (9, 'maha', 23,'maha@',9999999900,'dno.9','nedun street','balaji nagar','kedar','villupuram',605402,'tn', 'tawc',110,
 ' madurai',4,67,78,55,90,90,56,'dn.131','312th street','anbu nagar','thiruchy','thiruchy',605690,'tn',2020, 'maha','saravanan', 'yes'),
 (10, 'sara', 22,'sara@',9999999901,'dno.10','center street','mani nagar','kedar','villupuram',605602,'tn', 'tawc',110,
 ' madurai',4,67,78,90,90,55,98,'dn.131','312th street','anbu nagar','thiruchy','thiruchy',605690,'tn',2020, 'kish','kumar', 'no');
 
  select * from stu_detials;
  set sql_safe_updates=0;
  
update stu_detials set aadhar=1 where aadhar='yes';
update stu_detials set aadhar=0 where aadhar='no';
  
alter table stu_detials modify aadhar boolean;
 
select id , name ,semester, department ,sum(tamil+english+maths+physics+chemistry+biology)/6 as average from stu_detials group by name  ;
  
alter table stu_detials add degree varchar (10);
alter table stu_detials add department varchar (20);
   
update stu_detials set degree='bsc', department='physics' where id in (1,3,5,7,9);
update stu_detials set degree='bsc', department='cs' where id in (2,4,6,8,10);
 
select * from stu_detials;
   
select id ,name,department,avg(tamil+english+maths+physics+chemistry+biology)/6 as dc from stu_detials group by id ;
    
select  semester, department, max(tamil ) , max(english),max(maths), max(physics),max(chemistry),max(biology) from stu_detials where semester in (1,2,3,4) group by semester;

select id , name ,col_name, col_code ,p_out_yr, max(tamil) from  stu_detials group by id ;

  

  
  
  
  
  
  
  
  
  
  
 