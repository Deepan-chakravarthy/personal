create schema test3;
create table test3.students(id int,name varchar(30),age int,email_id varchar(20),phone int,address varchar(10),street varchar(20),area varchar(20),district varchar(30),pincode int,state varchar(20) ,tamil int,english int,maths int,physics int,chemistry int, biology int);

insert  into test3.students (id,name,age,email_id,phone,address,street,area,district,pincode,state,tamil,english,maths,physics,chemistry,biology)values
(01,'lion',10,'lion@gmail.com',123456789,'1a','5th street','palakarai','trichy',620001,'tamilnadu',60,90,80,70,66,88);

select*from test3.students;
insert into test3.students(id,name,age,email_id,phone,address,street,area,district,pincode,state,tamil,english,maths,physics,chemistry,biology) values
(02,'tiger',13,'tiger@gmail.com',123456749,'3a','16th street','palakarai','tirupur',620051,'tamilnadu',99,93,94,95,89,98),
(03,'dog',14,'dog@gmail.com',123456739,'1d','12th street','palakarai','vellore',620061,'tamilnadu',89,98,99,98,94,98),
(04,'fish',15,'fish@gmail.com',123454789,'2a','9th street','palakarai','theni',620501,'tamilnadu',89,89,98,45,87,98),
(05,'goat',13,'goat@gmail.com',123451789,'11a','8th street','palakarai','villupuram',624001,'tamilnadu',78,99,98,78,89,79),
(06,'camel',16,'camel@gmail.com',123856789,'61a','4th street','palakarai','erode',624001,'tamilnadu',89,98,89,79,98,69),
(07,'fox',17,'fox@gmail.com',123456749,'33d','3th street','palakarai','nilgiris',620041,'tamilnadu',89,45,67,87,98,78),
(08,'bear',14,'bear@gmail.com',123453789,'4a','6th street','palakarai','chennai',620201,'tamilnadu',89,67,77,88,56,76),
(09,'rat',12,'rat@gmail.com',123456759,'15w','12th street','palakarai','banglore',629901,'tamilnadu',98,79,67,96,79,56),
(10,'egale',18,'egale@gmail.com',123356789,'31a','3th street','palakarai','salem',630001,'tamilnadu',85,89,78,67,89,45);

alter table test3.student
