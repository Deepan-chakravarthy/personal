use day_3;
create table studentss( id int , name varchar(20), age int, email_id varchar(50), mobile bigint,
street varchar(20), area varchar(25), city varchar(25), district varchar(25), pincode int, state varchar(25),
college_name varchar(30),college_code varchar(10),university_name varchar(20), college_door_no varchar(10), college_street varchar(20), college_area varchar(20),
college_city varchar(20),college_district varchar(20), college_pincode int,
semester int, tamil bigint,english bigint,maths bigint,chemistry bigint,physics bigint,biology bigint,pass_out_year bigint );
describe studentss;
alter table studentss change column name frist_name varchar(20);
alter table  studentss add column last_name varchar(20) after frist_name;
select *from studentss;

insert into studentss values
(1,'sandy','santhosh',22,'sandy@gmai.com',7450034688,'new street','polur','chetpet','tv malai',606902,'tamilnadu','shc','323','trivallur','43/5','old street','arni','chetpet','tv malai',7094,1,45,34,65,76,87,56,2011);
insert into studentss values
(2,'lenin','kumar',23,'leni@gmai.com',4986894688,'old street','porur','bagayam','vellore',60695002,'tamilnadu','thomas college','475','priyar','46/5','old street','arni','chennai','chennai',9044,2,89,78,23,90,87,56,2012),
(3,'surendher','kumar',24,'sure@gmai.com',4567694688,'flower street','pallikotta','bagayam','vellore',90905002,'tamilnadu','loyolo college','7873','matras university','456/5','new street','arni','kk nagar','chennai',904954,3,56,78,23,56,87,86,2013),
(4,'surya','kumar',24,'surya@gmai.com',9999894688,'mariyamman street','thachambadi','bagayam','ooty',63495002,'kerala','super college','5575','super unisercity','99/5','new street','kerala center ','kochin','boderkerala',4644,4,89,56,23,56,87,86,2014),
(5,'sarvino','poochi',25,'pooch@gmai.com',909894688,'ool street','road','palacode','gishnagiri',60695002,'tamilnadu','kmg college','46775','kannan','65/5','old street','arni','chennai','chennai',9044,2,89,78,23,90,87,56,2012),
(6,'suman','rharan',23,'suman@gmai.com',4986894688,'mel street','porur','srinagar','vellore',60695002,'tamilnadu','thomas college','475','priyar','46/5','old street','arni','chennai','chennai',9044,5,89,78,23,90,87,56,2020),
(7,'karan','kumar',44,'kara@gmai.com',67894688,'nadu street','porur','bagayam','ooty',60695002,'tamilnadu','small college','475','priyar','46/5','old street','arni','chennai','chennai',9044,2,89,78,23,90,87,56,2016),
(8,'kevin','kmachaa',56,'kevin@gmai.com',9986894688,'saveruyar street','chennaian','bagayam','vellore',60695002,'tamilnadu','summa college','475','priyar','46/5','old street','arni','chennai','chennai',90567,4,89,67,78,35,87,56,2016),
(9,'ramesh','kumar',29,'rame@gmai.com',4898894688,'bosco street','pochii','bagayam','vellore',60695002,'tamilnadu','ss college','475','priyar','46/5','old street','arni','chennai','chennai',9044,5,89,78,93,89,89,67,2012),
(10,'suresh','kumar',34,'suresh@gmai.com',4965594688,'jesus street','katalur','bagayam','vellore',60695002,'tamilnadu','svm college','475','priyar','46/5','old street','arni','chennai','chennai',9564,6,59,78,83,90,87,99,2017);
insert into studentss values
(11,'sandy','santhosh',22,'sandy@gmai.com',7450034688,1,'new street','polur','chetpet','tv malai',606902,'tamilnadu','shc','323','trivallur','43/5','old street','arni','chetpet','tv malai',7094,2,45,56,65,46,57,336,2012);
alter table studentss add column aadhar varchar(2) after mobile;
update studentss set aadhar="y" where id in(1,2) ;
update studentss set aadhar="n" where  id in(3,4,5);
update studentss set aadhar="y" where  id in(6,7,8);
update studentss set aadhar="n" where  id in(9,10);
update studentss set aadhar=1 where aadhar="y";
update studentss set aadhar=0 where aadhar="n";
alter table studentss modify  aadhar boolean;
-- select avg(tamil and english and maths and chemistry and physics and biology ),semester from studentss group by semester;
select  semester, last_name ,avg(tamil+english+maths+chemistry+physics+biology )/6 as avg_marks  from studentss  group by semester,last_name;
-- select semester,avg(tamil and english and maths and chemistry and physics and biology )as avg_mark from studentss where  frist_name="sandy" group by semester;
alter table studentss add column degree_name varchar(20) after state;
alter table studentss add column department_name varchar(20) after degree_name;
update studentss set degree_name=" BA " where id=1;
update studentss set degree_name=" MSC " where id=2;
update studentss set degree_name=" BBA " where id=3;
update studentss set degree_name=" MBA " where id=4;
update studentss set degree_name=" BCA" where id=5;
update studentss set degree_name=" MCA" where id=6;
update studentss set degree_name=" MA" where id=7;
update studentss set degree_name=" MSW " where id=8;
update studentss set degree_name=" BSW" where id=9;
update studentss set degree_name=" BSC" where id=10;
update studentss set degree_name=" BCOM" where id=11;
update studentss set department_name=" BA tamil" where id=1;
update studentss set department_name=" BA english" where id=2;
update studentss set department_name=" MA tamil" where id=3;
update studentss set department_name=" MA english" where id=4;
update studentss set department_name=" BA history" where id=5;
update studentss set department_name=" MA history" where id=6;
update studentss set department_name=" BCA applin" where id=7;
update studentss set department_name=" master of CA" where id=8;
update studentss set department_name=" BSC computer" where id=9;
update studentss set department_name=" BSC physics" where id=10;
update studentss set department_name=" BSC physics" where id=11;
alter table studentss add column total bigint;
update studentss set total=(tamil+english+maths+chemistry+physics+biology ) where id=2;
update studentss set total=(tamil+english+maths+chemistry+physics+biology ) where id in(3,4,5,6,7,8,9,10,11);
select  semester ,max(tamil+english+maths+chemistry+physics+biology )as max_marks  from studentss group by semester;
select  college_name,pass_out_year,max(tamil+english+maths+chemistry+physics+biology )as overall  from studentss where pass_out_year=2012;
select max(tamil) ,max(english),max(maths),max(chemistry),max(physics),max(biology)from studentss;
select max(tamil and english and maths and chemistry and physics and biology) from studentss;


set sql_safe_updates=0;