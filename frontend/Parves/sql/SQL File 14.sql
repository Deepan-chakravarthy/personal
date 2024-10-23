create schema emp;
use emp;
drop schema emp;
create table employee(id int, name varchar(20), age int, email varchar(20), degree varchar(10), company_id int, primary key(id),
foreign key(company_id) references company(id));

create table mobile(id int, number bigint, operator varchar(10), data_speed int, employee_id int, primary key(id),
foreign key(employee_id) references employee(id));

create table company(id int, name varchar(20), founded_year int, primary key(id));

insert into employee(id,name,age,email,degree,company_id) values (1,'parves',22,'parves@gmail.com','mca',001),
(2,'mushraf',21,'mushraf@gmail.com','bca',002),
(3,'mohamed',22,'mohamed@gmail.com','mba',001),
(4,'shiraj',20,'shiraj@gmail.com','bba',null),
(5,'kalam',18,'kalam@gmail.com','bsc',012);


select * from employee;
desc employee;

create table mobile(id int, number bigint, operator varchar(10), data_speed int, employee_id int, primary key(id));
insert into mobile(id,number,operator,data_speed,employee_id) values (11,9360913978,'jio',120,1),
(12,9360913977,'airtel',150,2),
(13,9360913976,'vodafone',110,3),
(14,9360913975,'bsnl',60,4),
(15,9360913974,'idea',90,2),
(16,9360913973,'aircel',30,1),
(17,9360913972,'docomo',20,5),
(18,9360913971,'uninor',10,null);


select * from mobile;

create table company(id int, name varchar(20), founded_year int, primary key(id));
insert into company(id,name,founded_year) values (001,'wipro',1992),
(002,'zoho',1993),
(012,'infosys',1994),
(013,'tcs',1995);
desc employee;
select * from company;

SELECT * from employee INNER JOIN mobile ON employee.id = mobile.employee_id right outer join company on company.id = employee.company_id;


