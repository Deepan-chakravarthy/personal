create schema test4;
create table test4.students(id int,name varchar(30),age int,email_id varchar(20),phone_no int,street varchar(20),area varchar(20),city varchar(20),district varchar(30),pincode int,state varchar(20) ,
college_name varchar(30),college_code varchar(10),university_name varchar(30),semester int, tamil int,english int,maths int,physics int,chemistry int, biology int,
college_door_no varchar(10),clg_street varchar(20),college_area varchar(20),college_city varchar(20),college_district varchar(20),college_pincode int,college_state varchar(20),passedout_year int,firstname varchar(30),lastname varchar(20));
describe test4.students;
insert test4.students 
(id,name,age,email_id,phone_no,street,area,city,district,pincode,state,
college_name,college_code,university_name,semester,tamil,english,maths,physics,chemistry,biology,
college_door_no,clg_street,college_area,college_city,college_district,college_pincode,college_state,passedout_year,
firstname,lastname) values 

(01,'vignesh kumar',10,'lion@gmail.com',123456789,'5th street','palakarai','trichy','trichy',620001,'tamilnadu','Bishop heber college',0987,'bharath university',1,60,90,80,70,66,88,'1d','16th street','thillai nagar','trichy','trichy',620021,'tamilnadu',2000,'vignesh', 'kumar'),

(02,'joy kishore',13,'tiger@gmail.com',123456749,'16th street','palakarai','tirupur','tirupur',620051,'tamilnadu','st.joseph college',0988,'vijaymalaya university',2,99,93,94,95,89,98,'2d','3th street','kknagar','trichy','trichy',620011,'tamilnadu',2020,'joy' ,'kishore'),

(03,'ramesh kumar',14,'dog@gmail.com',123456739,'12th street','palakarai','vellore','vellore',620061,'tamilnadu','national college',0980,'gim university',3,89,98,99,98,94,98,'3d','12th street','vinay nagar','trichy','trichy',6200023,'tamilnadu',2021,'ramesh','kumar'),

(04,'vijay kumar',15,'fish@gmail.com',123454789,'9th street','palakarai','theni','theni',620501,'tamilnadu','jamal college',0989,'goal university',4,89,89,98,45,87,98,'4d','13th street','palakarai','chennai','chennai',620001,'tamilnadu',2017,'vijay','kumar'),

(05,'vinay kumar',13,'goat@gmail.com',123451789,'8th street','palakarai','villupuram','villupuram',624001,'tamilnadu','ajith college',0982,'kamal university',5,78,99,98,78,89,79,'5d','3th street','pallavaram','chennai','chennai',620012,'tamilnadu',2012,'vinay' ,'kumar'),

(06,'prshant kishore',16,'camel@gmail.com',123856789,'4th street','palakarai','erode','erode',624001,'tamilnadu','vijay college',0981,'vip university',6,89,98,89,79,98,69,'6d','17th street','malaai nagar','trichy','trichy',620021,'tamilnadu',2013,'prshant','kishore'),

(07,'vimal jai',17,'fox@gmail.com',123456749,'3th street','palakarai','nilgiris','nilgiris',620041,'tamilnadu','jj college of Engg',0987,'vellore university',7,89,45,67,87,98,78,'8d','9th street','vv nagar','trichy','trichy',620021,'tamilnadu',2014,'vimal','jai'),

(08,'ajai kumar',14,'bear@gmail.com',123453789,'6th street','palakarai','chennai','chennai',620201,'tamilnadu','ramakrishana college ',0985,'trichy university',8,89,67,77,88,56,76,'9d','11th street','g v m nagar','trichy','trichy',620001,'tamilnadu',2015,'ajay','kumar'),

(09,'ajith kumar',12,'rat@gmail.com',123456759,'12th street','palakarai','banglore','banglore',629901,'karnataka','wisdom college',0987,'jj university',3,98,79,67,96,79,56,'22d','8th street','palakarai','trichy','trichy',620011,'tamilnadu',2016,'ajith','kumar'),

(10,'arjun kumar',18,'egale@gmail.com',123356789,'3th street','palakarai','salem','salem',630001,'tamilnadu','bb college',0989,'bj university',4,85,89,78,67,89,45,'10d','4th street','vimal nagar','chennai','chennai',620022,'tamilnadu',2019,'arjun','kumar');

select * from test4.students;
alter table test4.students add column  aadhar varchar(20);
update test4.students  set aadhar ='yes' where id in(1,3,5,7,9);
update test4.students  set aadhar = 'no' where id in (2,4,6,8,10);
update test4.students  set aadhar = 1 where aadhar = 'yes';
update test4.students  set aadhar = 0 where aadhar = 'no';
alter table test4.students modify aadhar boolean;


 select id,name,semester, avg (tamil+english+maths+physics+chemistry+biology)/6 as average from test4.students where id=3 group by semester;
 
 /* alter table test4.students add column department varchar(30);
update test4.students set degree='ug' where id in(1,4,8);
update test4.students  set degree='pg'where id in (2,6,9); /*


 
