create schema exmpl;
use exmpl;
create table employee(
	id int ,
    name varchar(15),
    age int,
    email varchar(15),
    degree varchar(15),
    cmp_id int);
    
alter table employee add primary key (id);

alter table employee add  constraint foreign key (cmp_id) references company(id);
    select * from employee;
    
create table mobile(
	id int,
    number int,
    operator varchar(10),
    speed varchar(10),
    emp_id int);
    
    select * from mobile;
    
    alter table mobile add constraint foreign key(emp_id) references employee(id);
    alter table mobile add primary key(id);
    create table company(
		id int,
        name varchar(15),
        founded_year  int);
        
	   select * from company;
       alter table company add primary key(id);
       
insert into employee(id, name,age,email,degree,cmp_id) values (101, 'mitchel',43,'mic@gmail.com','bca',1001);
insert into employee(id, name,age,email,degree,cmp_id) values (102, 'kane ',27,'kane@gmail.com','bcom',1002);
insert into employee(id, name,age,email,degree,cmp_id) values (103, 'williams',43,'will@gmail.com','be',1003);
insert into employee(id, name,age,email,degree,cmp_id) values (104, 'raina',53,'raina@gmail.com','mca',1004);

alter table mobile modify column number double;
insert into mobile(id,number,operator,speed,emp_id) values (501,9863727896,'airtel','2mbps',103);
insert into mobile(id,number,operator,speed,emp_id) values (502,7864679806,'vodafone','1mbps',102);
insert into mobile(id,number,operator,speed,emp_id) values (504,8832892339,'jio','3.5mbps',101);
insert into mobile(id,number,operator,speed,emp_id) values (503,7834798289,'jio','3.5mbps',null);
insert into mobile(id,number,operator,speed,emp_id) values (508,9823003993,'vodafone','3mbps',103);
insert into mobile(id,number,operator,speed,emp_id) values (505,9739902934,'jio','3.5mbps',102);
insert into mobile(id,number,operator,speed,emp_id) values (506,9469823033,'airtel','4.5mbps',null);
insert into mobile(id,number,operator,speed,emp_id) values (507,7809485933,'jio','10mbps',null);

select * from mobile;
truncate mobile;

insert into company(id,name,founded_year) values (1501,'aaa',2003);
insert into company(id,name,founded_year) values (1002,'bbb',1990);
insert into company(id,name,founded_year) values (1004,'ddd',2008);
insert into company(id,name,founded_year) values (1003,'abc',2013);
insert into company(id,name,founded_year) values (1001,'xyz',2009);
insert into company(id,name,founded_year) values (1007,'zzzzz',1890);
insert into company values(1092,'abab',1999);
insert into company values(1012,'bcbc',2010),(1013,'abcabc',2029);
 select * from company;
 insert into company (id,name)value(1029,'xyxyxyx');
 
select * from employee e inner join mobile m on e.id =m.emp_id;

select * from employee e inner join mobile m on e.id =m.emp_id  
 right outer join company c on e.cmp_id=c.id;

select * from  employee e inner join  company c on e.cmp_id= c.id where max(age) group by (e.id);
 
 select * from employee where name like '%el'; 
 
 select * from mobile;
 
select  number, operator, avg(speed) from mobile  group by(operator) having avg(speed)>1.5 order by avg(speed) asc ;

select operator,count(operator) as total, avg(speed) as avg_spd  from mobile group by operator

