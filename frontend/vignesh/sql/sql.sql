create schema test1;
create table test1.employee(id int,name varchar(30),age int,email_id varchar(20),phone int,address varchar(10),street varchar(20),area varchar(20),district varchar(30),pincode int,state varchar(20));
describe test1.employee;
insert into test1.employee(id,name,age,email_id,phone,address,street,area,district,pincode,state) values 
(01,'lion',10,'lion@gmail.com',123456789,'1a','5th street','palakarai','trichy',620001,'tamilnadu');
select*from test1.employee;
insert into test1.employee(id,name,age,email_id,phone,address,street,area,district,pincode,state) values
(02,'tiger',13,'tiger@gmail.com',123456749,'3a','16th street','palakarai','tirupur',620051,'tamilnadu'),
(03,'dog',14,'dog@gmail.com',123456739,'1d','12th street','palakarai','vellore',620061,'tamilnadu'),
(04,'fish',15,'fish@gmail.com',123454789,'2a','9th street','palakarai','theni',620501,'tamilnadu'),
(05,'goat',13,'goat@gmail.com',123451789,'11a','8th street','palakarai','villupuram',624001,'tamilnadu'),
(06,'camel',16,'camel@gmail.com',123856789,'61a','4th street','palakarai','erode',624001,'tamilnadu'),
(07,'fox',17,'fox@gmail.com',123456749,'33d','3th street','palakarai','nilgiris',620041,'tamilnadu'),
(08,'bear',14,'bear@gmail.com',123453789,'4a','6th street','palakarai','chennai',620201,'tamilnadu'),
(09,'rat',12,'rat@gmail.com',123456759,'15w','12th street','palakarai','banglore',629901,'tamilnadu'),
(10,'egale',18,'egale@gmail.com',123356789,'31a','3th street','palakarai','salem',630001,'tamilnadu');
alter table test1.employee rename column name to firstname;
describe test1.employee;
alter table test1.employee add column  lastname varchar(20) after firstname;
alter table test1.employee modify column age varchar(20);
update test1.employee set lastname='vignesh'where id=01;
update test1.employee set lastname='vijay'where id=02;
update test1.employee set lastname='viyan'where id=03;
update test1.employee set lastname='vinay'where id=04;
update test1.employee set lastname='ganeshh'where id=05;
update test1.employee set lastname='dinesh'where id=06;
update test1.employee set lastname='sueshh'where id=07;
update test1.employee set lastname='janesh'where id=08;
update test1.employee set lastname='krish'where id=09;
update test1.employee set lastname='kohli'where id=10;
set sql_safe_updates=0;