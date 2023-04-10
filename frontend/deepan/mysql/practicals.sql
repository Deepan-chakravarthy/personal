create schema practical;
use practical;



create table employees (id int auto_increment primary key, first_name varchar(20), last_name varchar(20), age int, email varchar(25),

salary int, height int, emp_location varchar(20), company_id int,

foreign key (company_id) references company(id))auto_increment=1;

 

 

select * from employees;

desc employees;

 

 

create table company (id int auto_increment primary key, name varchar(20), location varchar(30))auto_increment=11;

 

 

select * from company;

desc company;

 

 

insert into employees(first_name, last_name, age, email, salary, height, emp_location, company_id) values

('parves', 'mushraf', 22, 'parves@gmail.com', 10000, 170, 'Bangalore', 11),

('mushraf', 'sulthan', 21, 'mushraf@gmail.com', 12000, 150, 'Bangalore',12),

('ibu', 'ibraheem', 18, 'ibu@gmail.com', 20000, 150, 'Chennai', 11),

('mohamed', 'wajith', 19, 'ibraheem@gmail.com', 18000, 160, 'Chennai', 12),

('mohamed', 'refai', 30, 'refai@gmail.com', 25000, 180, 'Coimbatore', 11),

('abdul', 'kalam', 36, 'kalam@gmail.com', 22000, 190, 'Madurai', 13),

('deepan', 'chakku', 41, 'deepan@gmail.com', 28000, 175, 'Trichy', 13),

('vicky', 'vignesh', 38, 'vicky@gmail.com', 35000, 185, 'Pune', 12),

('alan', 'stephem', 42, 'alan@gmail.com', 32000, 150, 'Hydrabad', null),

('gabriel', 'thomas', 52, 'gabi@gmail.com', 40000, 155, 'Trivandrum', null);

 

 

insert into company(name, location) values

('Wipro', 'Bangalore'),

('Infosys', 'Chennai'),

('TCS', 'Trichy'),

('Zoho', 'Madurai');

alter table company rename column name to company_name;

 

 

------------------------------------------ Relational Operator -----------------------------------------------

 

select * from employees where (age<25 or height>160) and salary>20000;

 

select * from employees where (age between 25 and 35) and salary>20000;

 

select * from employees where (age between 20 and 35) and age!=21 and (salary=10000 or salary=12000);

 

 

 

--------------------------------------------- Wildcard Operator -----------------------------------------------

 

 

 

select * from employees where company_id=11 or company_id=12;

 

select * from employees where company_id not in (11, 12);

 

select first_name,last_name from employees where first_name like 'a%' and last_name like '%m';

 

select first_name from employees where first_name like 'a__n';

 

 

--------------------------------------------- Aggregates Functions ------------------------------------------------

 

 

select sum(salary) from employees;

 

select avg(salary) from employees;

 

select count(id) from employees;

 

select * from employees where salary=(select max(salary) as maximum_salary from employees);

 

select * from employees where salary=(select min(salary) as minimum_salary from employees);

 

select * from employees where salary=(select max(salary) as maximum_salary from employees where id between 3 and 7);

 

select * from employees where salary=(select max(salary) from employees where id between 3 and 7);

 

select count(id) from employees where company_id=11;

 

select count(id) from employees where salary>=15000;

 

--------------------------------------------- Formatting Querys ------------------------------------------------

 

 

select * from employees where salary>15000 order by id desc;

 

select * from employees where salary>15000  group by first_name order by id desc;

 

select * from employees where salary>15000 order by salary;

 

select * from employees ;

 

--------------------------------------------- Joins ------------------------------------------------

 

 

select * from employees e inner join company c on e.company_id=c.id;

 

select * from employees e inner join company c on e.company_id=c.id where e.emp_location=c.location;

 

select * from employees e inner join company c on e.company_id=c.id where e.emp_location!=c.location;

 

select * from employees e inner join company c on e.company_id=c.id where e.emp_location!=c.location and salary>15000;

 

--------------------------------------------- Subqueries ------------------------------------------------

 

 

select company_name from employees e inner join company c on e.company_id=c.id where e.id=5;

 

select * from employees e inner join company c on e.company_id=c.id where c.company_name=

(select company_name from employees e inner join company c on e.company_id=c.id where e.id=5);

 

select avg(salary) from employees e inner join company c on e.company_id=c.id where c.id=11;

 

select count(e.id) from employees e inner join company c on e.company_id=c.id where salary>

(select avg(salary) from employees e inner join company c on e.company_id=c.id where c.id=11);

 

--------------------------------------------- Unions ------------------------------------------------

 

 

select id,first_name,emp_location from employees union select id,company_name,location from company;

 

select e.id,e.first_name,e.salary,c.location from employees e inner join company c on e.company_id=c.id where c.id=11

union

select e.id,e.first_name,e.salary,c.location from employees e inner join company c on e.company_id=c.id where c.id=12;

 

select id,first_name,(case when (salary)>20000 then ("high salary") else ("low salary") end) as salary_levels from employees;

 