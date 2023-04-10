create schema Employee_details;
use Employee_details;
create table employee (id int,name varchar(20),age int,email_id varchar(30),mobile_no int,Address varchar(40),
street varchar(20),Area varchar(20),city varchar(20),district varchar(25),pincode int,state varchar(20));
alter table employee rename column name to firstname;
alter table employee add lastname varchar(20) after firstname;
alter table  employee modify age varchar(10);
alter table  employee modify mobile_no bigint;
describe employee;
insert into employee values(1,'sathiya','seelan','24','sathiya@gmail.com',7010556776,'26 sri ram appartmrnt','malar street','veera nagar','mettur','salem',636404,'Tamilnadu'),
(2,'suman','das','22','suman@gmail.com',7010897898,'34 das illam','suman street','singam nagar','madurai','madurai',638978,'Tamilnadu'),
(3,'santhosh','sandy','22','sandy@gmail.com',7010890011,'22 sai sri illam','sandy street','kayal nagar','thiruvanaamalai','thiruvanaamalai',638979,'Tamilnadu'),
(4,'surrendhar','suhen','22','avenger@gmail.com',7022897898,'45 kamls illam','gandhi street','siruthai nagar','kadaloore','kadaloore',639078,'Tamilnadu'),
(5,'lennin','lento','22','lennin@gmail.com',7010097898,'91 lennin illam','lennin street','karadi nagar','thiruchi','thiruchi',648978,'Tamilnadu'),
(6,'Anto','anto','22','Anto@gmail.com',8010897898,'1st Anto house','Anto street','Anto nagar','thiruchi','thiruchi',637978,'Tamilnadu'),
(7,'gabi','gabriyel','22','Gabi@gmail.com',9010897898,'2nd Gabi illam','Gabi street','cheeta nagar','Ambur','Ambur',658978,'Tamilnadu'),
(8,'mukesh','raai','22','mukesh@gmail.com',7090897898,'mukesh illam','kovi street','malapula nagar','thiruvanathapuram','thiruvanathapuram',638978,'Kerala'),
(9,'juhn','gobal','22','juhn@gmail.com',8090897898,'juhn illam','juhn street','kathi nagar','chennai','chennai',600024,'Tamilnadu'),
(10,'michael','jackshon','22','michael@gmail.com',9878897898,'machael illam','mickel street','karadi nagar','chennai','chennai',638808,'Tamilnadu');
select*from employee;                         
 
