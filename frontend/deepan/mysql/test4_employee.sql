/*
create the employee table(id,name,age,email,degree,company_id)
" " mobile(id,num,operator,dataspeed,employee_id)
" " company(id,name,founded_year)
get all the employee who has mobile num and get all company which has employee or not
*/

use sample1;

---- get all the employee who has mobile num and get all company which has employee or not---

select * from employee as e
inner join mobile as m on
m.employee_id=e.id
right outer join company as c on
c.id=e.company_id;

---- which company has maximum no_of_employees----

select c.name,count(e.name) as no_of_employees from company as c
left outer join  employee as e on
e.company_id=c.id group by c.name;

select max(no_of_employees) from (select c.name,count(e.name) as no_of_employees from company as c
left outer join  employee as e on
e.company_id=c.id group by c.name) as maxi;


select * from (select c.name, count(e.name) as no_of_employees from company as c left outer join  employee as e on e.company_id=c.id group by c.name) t1 
where no_of_employees = (select max(no_of_employees) from (select c.name, count(e.name) as no_of_employees from company as c left outer join  employee as e on e.company_id=c.id group by c.name) t2);

-------- whichy company has minimum no_of_employees----

select c.name,count(e.name) as no_of_employees from company as c 
left outer join employee as e on
c.id=e.company_id group by c.name;

select min(no_of_employees) from (select c.name,count(e.name) as no_of_employees from company as c 
left outer join employee as e on
c.id=e.company_id group by c.name) as t;

select * from (select c.name,count(e.name) as no_of_employees from company as c 
left outer join employee as e on
c.id=e.company_id group by c.name) as t where no_of_employees=(select min(no_of_employees) from (select c.name,count(e.name) as no_of_employees from company as c 
left outer join employee as e on
c.id=e.company_id group by c.name) as t);


-------- /sir ----------
select c.name, count(e.name) as no_of_employees from company as c left outer join  employee as e on e.company_id=c.id group by c.name order by no_of_employees desc;

select * from (select c.name, count(e.name) as no_of_employees from company as c left outer join  employee as e on e.company_id=c.id group by c.name order by no_of_employees desc) t1 
where no_of_employees = (select max(no_of_employees) from ((select c.name, count(e.name) as no_of_employees from company as c left outer join  employee as e on e.company_id=c.id group by c.name order by no_of_employees desc)) t2)
;

------- sir/ --------

-- creation and adding values---

create schema sample1;
use sample1;
drop schema sample1;


 create table employee(
 id int auto_increment primary key,
 name varchar(20),
 age int,
 email varchar(50),
 company_id int,
 foreign key (company_id) references company(id)
 );
 
 create table mobile(
 id int auto_increment primary key,
 num bigint,
 operator varchar(10),
 data_speed int,
 employee_id int,
 foreign key (employee_id) references employee(id)
 );
 
  create table company(
  id int auto_increment primary key,
  name varchar(10),
  founded_year year
  );
  
  
  insert into company(name,founded_year) values
  ('abc',2010),
  ('xyz',2015),
  ('asdf',2020);
  insert into company(name,founded_year) values
  ('dcc',2012);
  
  
  insert into employee(name,age,email,company_id) values
  ('akash',25,'akash@gmail.com',1),
  ('alex',22,'alex@gmail.com',3),
  ('bala',23,'bala@gmail.com',3),
  ('kumar',24,'kumar@gmail.com',1),
  ('syed',20,'syed@gmail.com',3);
  
  
  
  
  insert into mobile(num,operator,data_speed,employee_id) values
  (1234567890,'airtel',100,1),
  (1234554321,'aitel',100,2),
  (0987654321,'bsnl',120,3),
  (2345678901,'vi',150,5),
  (3456789012,'vi',150,2),
  (3214567890,'airtel',100,null),
  (4321567890,'vi',150,null);
  
  
  
 SELECT *FROM
    (SELECT 
        c.name, COUNT(e.name) AS no_of_employees
    FROM
        company AS c
    LEFT OUTER JOIN employee AS e ON e.company_id = c.id
    GROUP BY c.name
    ) t1
WHERE
    no_of_employees = (SELECT 
            min(no_of_employees)
        FROM
            ((SELECT 
                c.name, COUNT(e.name) AS no_of_employees
            FROM
                company AS c
            LEFT OUTER JOIN employee AS e ON e.company_id = c.id
            GROUP BY c.name
            )) t2);