create schema bus;
use bus;

create table student(sid int ,
name varchar(20),  
age int ,
email_id varchar(20),
molibe_number bigint,
door_no varchar(30), 
street varchar (20),
area varchar (20),
city varchar (10),
district varchar (20),
cid int,
bid int,
primary key(sid));

desc student;

alter table student add foreign key(cid) references col(cid);
alter table student add foreign key(bid) references bus(bid);

insert into student 
(sid ,name ,  age,email_id,molibe_number ,door_no , street ,area ,city,district, cid , bid ) values
 (1, 'tamil', 23 , 'tamil@',9999999991,'dno.1','1st street','mani nagar','vvn','villupuram',1001,11);
 
 select * from student;
 
insert into student 
(sid ,name ,  age ,email_id ,molibe_number ,door_no , street ,area ,city,district, cid ,bid) values
 (2, 'mani', 22,'mani@',9999999922,'dno.2','2nd street','best nagar','veedur','villupuram',1001,11),
 (3, 'ravi', 34,'ravi@',9999999923,'dno.323','4th street','mass nagar','valavanur','cuddalore',1001,12),
 (4, 'akil', 33,'akil@',9999999924,'dno.34','4th street','kavi nagar','thenur','cuddalore',1001,13),
 (5, 'vijay', 24,'vijay@',9999999925,'dno.25','5th street','gobi nagar','villiyanur','pondy',1002,13),
 (6, 'raja', 25,'raja@',9999999936,'dno.26','6th street','gobi nagar','villiyanur','pondy',1002,12),
 (7, 'pushpa', 26,'pushpa@',9999999948,'dno.74','2nd street','ramar nagar','koottaiyur','villupuram',1003,12),
 (8, 'bala', 27,'bala@',9999999990,'dno.82','vijay street','senthil nagar','kedar','villupuram',1003,15),
 (9, 'maha', 23,'maha@',9999999900,'dno.9','nedun street','balaji nagar','kedar','thirukovilur',1004,15),
 (10, 'sara', 22,'sara@',9999999901,'dno.120','rp street','mani nagar','kedar','thirukovilur',1004,15),
 (11, 'mavi', 22,'mavi@',9949999922,'dno.2','2nd street','best nagar','veedur','villupuram',1005,15),
 (12, 'kanna', 34,'kanna@',5999999923,'dno.23','old street','mass nagar','valavanur','cuddalore',1005,15),
 (13, 'anju', 33,'anju@',9969999924,'dno.4','42th street','kavi nagar','thenur','cuddalore',1005,11),
 (14, 'saran', 24,'saran@',8999999925,'dno.35','5th street','anna nagar','villiyanur','thirukovilur',1001,11),
 (15, 'hema', 25,'hema@',9909999936,'dno.46','new street','gobi nagar','villiyanur','pondy',1005,12),
 (16, 'priyua', 26,'priyua@',4999999948,'dno.7','bus street','ramar nagar','koottaiyur','villupuram',1001,14),
 (17, 'kani', 27,'kani@',9999699990,'dno.28','vijay street','senthil nagar','kedar','villupuram',1001,14),
 (18, 'kavi', 23,'kavi@',9999799900,'dno.9','nedun street','t nagar','kedar','villupuram',1002,14),
 (19, 'naren', 22,'naren@',9989999901,'dno.120','center street','mani nagar','kedar','villupuram',1003,14),
 (20, 'manoj', 22,'manoj@',9929999901,'dno.10','center street','banu nagar','veedur','villupuram',1004,14);
 
  select * from student;
  
  ---------------------------------------------------------------------------------------------------------------
  
 create table col(cid int,
 name varchar(20),
 code int,
 dn varchar(20),
 str varchar(20),
 city varchar(20),
 dist varchar (20),
 pinc int ,
 st varchar(20),
 primary key(cid));
 
 drop table col;
 
 insert into col (cid ,name ,code ,dn ,str ,city ,dist ,pinc ,st ) values
 (1001,'sjc',100,'dn.11','12th street','vikravandi','villupuram',605602,'tn');
 insert into col (cid ,name ,code ,dn ,str ,city ,dist ,pinc ,st) values
 (1002, 'mec',102, 'dn.101','102th street','veedur','villupuram',605602,'tn'),
 (1003,  'knc',103,'dn.110','128th street','kedar','villupuram',605602,'tn'),
 (1004, 'tawc',110,'dn.131','312th street','panruti','villupuram',605602,'tn'),
 (1005, 'pec',104,'dn.191','02th street','salai','villupuram',605602,'tn');
 
  select * from col;
 ------------------------------------------------------------------------------------------------------------
 
 create table bus(bid int primary key ,no varchar (20), type varchar(10), route varchar (20));
 
  drop table bus;
 desc bus;

 insert into bus (bid  , no , type , route ) values 
 ( 11 , '11A','private','vikravandi- vpm');
 insert into bus (bid  , no , type , route ) values 
 ( 12 , '11B','private','veedur-vpm'),
 ( 13 , '11C','govbus1','panruti-vpm'),
 ( 14 , '11D','gov','salai-vpm'),
 ( 15 , '11E','gov','kedar-vpm');
 select * from bus;
 

------------------------------------------------------------------------------------------------------
create table driver (dr_id int primary key, name varchar(20), age int , adr varchar(30),  bid int);
 drop table driver ;
 
desc driver;

alter table driver add foreign key driver(bid) references bus(bid);


insert into driver (dr_id ,name , age , adr ,bid) values 
(121, 'saravanan',45, 'dno.34 2ndstreet,vpm',11);
insert into driver(dr_id ,name , age , adr,bid) values 
(122, 'kasi',35, 'dno.34 2ndstreet,vpm',11),
(131, 'rajan',36, 'dno.334 newstreet,vpm',12),
(132, 'veera',46, 'dno.094 oldstreet,vpm',12),
(141, 'mahesh',53, 'dno.35 3rdstreet,vvn',13),
(142, 'suman',52, 'dno.55 2ndstreet,vpm',13),
(150, 'sandy',29, 'dno.61 2ndstreet,che',14),
(151, 'juan',29, 'dno.2 2ndstreet,vpm',14),
(200, 'gopal',31, 'dno.14 3ndstreet,cud',15),
(201, 'siva',45, 'dno.4 22ndstret,vpm',15);

update driver set bid=null where dr_id in(122,132,142,151,201);


select * from driver;
 select * from bus;
 select * from student;
 select * from col;


------------------------------------------------------------------------------------------------------------

-- count for how many students travel in each bus and  bus type-- over
select count(sid) as students , student.bid as bus,bus.type as bustype from student inner join bus on student.bid=bus.bid group by student.bid  ;
select * from student;




-- max--- over
select maximum,bustype from 
(select max(students) as maximum,bustype from
(select count(sid) as students , student.bid as bus,bus.type as bustype from student inner join bus on student.bid=bus.bid group by student.bid ) as t)as t2 
where maximum=t.students;





-- min-- over
select min(students) from(select count(sid) as students , student.bid as bus,bus.type as bustype from student inner join bus on student.bid=bus.bid group by student.bid ) as t ;

-- count for how many students travel diff type of  buses -- over
select count(student.sid) as students , student.bid as bus,bus.type as bustype from student inner join bus on student.bid=bus.bid group by bus.type;

-- college wise  each students name, clg name , bus id -- over
select col.name as college,count(sid) as stu, student.bid, student.cid from student inner join col on student.cid=col.cid group by  col.name ;

-- count of stuents in each colg --  group by student.cid
select  col.name as cname ,student.cid as college, count(student.cid)  from student inner join col on student.cid=col.cid group by col.name ;

-- for each particular student , colg id ,  bus id ,  and bus type -- over
select student.name , student.cid as col_id, student.bid as bus, bus.type as bustype from student inner join bus on student.bid=bus.bid group by student.name ;

-- 
select distinct(student.bid),student.cid,bus.type from student inner join bus on student.bid=bus.bid ;

select * from student inner join col on student.cid=col.cid  inner join bus on student.bid=bus.bid inner join driver on bus.bid=driver.bid order by sid ;


select max(student) from (select count(sid) , student.bid as bus,bus.type as bustype from student inner join bus on student.bid=bus.bid ) as s;

select * from driver left join bus on driver.bid=bus.bid;

select max(stu) , college from (select col.name as college,count(sid) as stu, student.bid, student.cid from student inner join col on student.cid=col.cid group by  col.name ) as r;

select * , (select date() from dual) as time from student;

select name , maximum from