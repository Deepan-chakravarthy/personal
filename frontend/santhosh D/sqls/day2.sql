create schema employe;
use employe;
create table employe_detail(id int,name varchar(20),age int,email varchar(20),mobileno int2,address varchar(20),street varchar(20),area varchar(20),city varchar(20),pincode int2);
desc employe_detail;
insert into employe_detail values(1,'sandy',22,'sandy@mail.com',98784723,'chennai','new street','chetpet','tv malai',3,'santhosh');
insert into employe_detail values(2,'suresh',23,'sure@mail.com',94485923,'mathurai','oldstreet','arni','tv malai',4,'kumar'),
(3,'kumar',24,'kumar@mail.com',23455923,'selam,','super street','ooty','vellore',53,'kumarak'),
(4,'ramesh',23,'rame@mail.com',75400346,'kerala','kk street','arcord','tpt',34,'rameshvaran'),
(5,'dinesh',24,'dine@mail.com',94485923,'chennai','oldstreet','kk nagar','malai',345,'kumardinesh'),
(6,'kevin',23,'kevin@mail.com',94485923,'mathurai','nn street','chennai','tv malai',234,'kevin ss'),
(7,'sarvino',23,'sure@mail.com',94485923,'mathurai','oldstreet','arni','tv malai',4,'kumar'),
(8,'gopal',23,'gopal@mail.com',94485923,'mathurai','jkgstreet','parrni','chennai',344,'juon '),
(9,'surendher',23,'sure@mail.com',94485923,'kaniyakumari',' chtv street','vanthvasi','tv malai',468,'sure'),
(10,'suman',25,'suman@mail.com',96585923,'vellore','busstreet','mel theru','pollachi',457,'su,na kumar');
alter table employe_detail modify column  mobileno varchar(20);
alter table employe_detail change column name first_name varchar(20);
alter table employe_detail add column  last_name varchar(20);
alter table employe_detail modify column  age varchar(20);

select * from employe_detail;
create table student(id int,name varchar(20),age int,email varchar(20),mobileno int2,address varchar(20),street varchar(20),area varchar(20),city varchar(20),pincode int,tamil  int,english int,maths int,programming int,biology int,physic int);
desc student;
alter table student modify column mobileno int;
insert into  student values(1,'sandy',22,'sandy@mail.com',98784723,'chennai','new street','chetpet','tv malai',3,34,54,54,24,86,65),
(2,'suresh',23,'sure@mail.com',94485923,'mathurai','oldstreet','arni','tv malai',4,45,76,89,43,76,34),
(3,'kumar',24,'kumar@mail.com',23455923,'selam,','super street','ooty','vellore',5,53,65,87,98,56,43),
(4,'ramesh',23,'rame@mail.com',75400346,'kerala','kk street','arcord','tpt',34,54,76,87,45,34,23),
(5,'dinesh',24,'dine@mail.com',94485923,'chennai','oldstreet','kk nagar','malai',345,45,34,76,87,56,45),
(6,'kevin',23,'kevin@mail.com',94485923,'mathurai','nn street','chennai','tv malai',234,45,87,98,56,45,32),
(7,'sarvino',23,'sure@mail.com',94485923,'mathurai','oldstreet','arni','tv malai',4,56,76,34,34,23,65),
(8,'gopal',23,'gopal@mail.com',94485923,'mathurai','jkgstreet','parrni','chennai',344,23,45,34,66,43,56),
(9,'surendher',23,'sure@mail.com',94485923,'kaniyakumari',' chtv street','vanthvasi','tv malai',468,67,56,87,56,45,87),
(10,'suman',25,'suman@mail.com',96585923,'vellore','busstreet','mel theru','pollachi',457,45,87,78,98,56,67);
select * from student;
use employe;

alter table student add column sample int;
update student set sample='new value', sample = age;
alter table student add  column frist_name  varchar(20) after name;
alter table student add  column last_name  varchar(20) after frist_name;
update student set frist_name="santhosh"where id=1;

set sql_safe_updates=0;
alter table student add column aadhar varchar(20);
update student set aadhar="yes" where id= 2 ;
update student set aadhar="no" where  id in(3,4,5);
update student set aadhar="yes" where  id in(6,7,8);
update student set aadhar="no" where  id in(9,10);
alter table student modify column aadhar boolean;
update student set aadhar=0 where id in (1,3,5,7,8,10);
update student set aadhar=1 where id in (2,4,6,9);
update student set frist_name="gaby" where id=2;
update student set last_name="virat" where id=1;
update student set last_name="maahi" where id=2;
update student set frist_name="suresh",last_name="raina" where id=3;
update student set frist_name="kevin",last_name="macha" where id=4;
update student set frist_name="irfan",last_name="mdi" where id=5;
update student set frist_name="gaby",last_name="thomas" where id=6;
update student set frist_name="sarvino",last_name="poochi" where id=7;
update student set frist_name="alex",last_name="rajaparambarai" where id=8;
update student set frist_name="sharon",last_name="raja" where id=9;
update student set frist_name="ajith",last_name="kumar" where id=10;

/*day2*/

create table employeee(id int,name varchar(20),email varchar(50),age int, marks int,Ranks int);
desc employeee;
insert into employeee values(1,'sandy','sandy@gmail.com',,,),
(2,'gopal','gopla@gmail.com',,,),
(3,'gaby','gabygmail.com',,,),
(4,'kevin','kevin@gmail.com',,,),
(5,'kavin','kavin@gmail.com',,,),
(6,'surendher','sure@gmail.com',,,),
(7,'suman','suman@gmail.com',,,),
(8,'surya','surya@gmail.com',,,),
(9,'alan','alam@gmail.com',,,),
(10,'deepan','chakku@gmail.com',,,);
