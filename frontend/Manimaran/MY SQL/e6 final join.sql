create schema addm;
use addm;
create table company(id int , name varchar(10) , founded_yr int , mid int, primary key(id));
insert into company(id,name,founded_yr,mid) values(1,'Advento',2007,201);
insert into company(id,name,founded_yr,mid) values(2,'Cts',158,202);
insert into company(id,name,founded_yr,mid) values(3,'zoho',1980,203);
insert into company(id,name,founded_yr,mid) values(4,'TCS',1960,204);
insert into company(id,name,founded_yr,mid) values(5,'Infosys',2000,205);
insert into company(id,name,founded_yr,mid) values(6,'Accenture',1965,206);
insert into company(id,name,founded_yr,mid) values(7,'Speridean',1975,207);

alter table company add constraint foreign key(mid) references mobile(mid);

select * from company;
drop table company;
create table employees(eid int , name varchar(20) , age int , email varchar(30) , degree varchar(20) , id int , foreign key(id) references company(id) , primary key(eid));
insert into employees(eid,name,age,email,degree,id) values(101,'mani',23,'mani@gmail.com','MSC',1);
insert into employees(eid,name,age,email,degree,id) values(102,'naveen',22,'naveen@gmail.com','MCA',2);
insert into employees(eid,name,age,email,degree,id) values(103,'suresh',29,'suuresh@gmail.com','MBA',3);
insert into employees(eid,name,age,email,degree,id) values(104,'naveen',22,'naveen@gmail.com','MSC',4);
insert into employees(eid,name,age,email,degree,id) values(105,'parakash',29,'prakash@gmail.com','MSC',5);
insert into employees(eid,name,age,email,degree,id) values(106,'karun',29,'karun@gmail.com','MSC',6);
insert into employees(eid,name,age,email,degree,id) values(107,'ramesh',23,'ramesh@gmail.com','MSC',7);
set sql_safe_updates=0;
select * from employees;

create table mobile(mid int , numb int , operator varchar(20) , network_speed int , eid int , foreign key(eid) references employees(eid), primary key (mid));
insert into mobile(mid,numb,operator,network_speed,eid) values(201,637989550,'relai',17,101);
insert into mobile(mid,numb,operator,network_speed,eid) values(202,96558290,'reklai',17,102);
insert into mobile(mid,operator,network_speed,eid) values(203,'Vodafone',17,103);
insert into mobile(mid,numb,operator,network_speed,eid) values(204,73588,'voda',17,104);
insert into mobile(mid,operator,network_speed,eid) values(205,'Airtel',17,105);
insert into mobile(mid,numb,operator,network_speed,eid) values(206,94427,'idea',17,106);
insert into mobile(mid,operator,network_speed,eid) values(207,'idea',17,107);

alter table mobile add column price varchar(20);
update mobile set price='20000' where mid in(201,202,203);
update mobile set price='1200' where mid in(204,205,206,207);
select * from mobile;

select e1.name,m1.operator, m1.numb from employees e1  inner join mobile m1 on m1.numb is not null  and e1.eid=m1.eid;

select e1.name,m1.numb,c1.name from employees e1 inner join mobile m1 on m1.numb is not null and e1.eid=m1.eid right outer join company c1 on c1.id=e1.id;

select m1.operator,c1.name as company_name,m1.numb as mobile_number,e1.name as empl_name, m1.price,e1.degree from mobile m1 inner join company c1 on m1.numb is not null and c1.mid=m1.mid right outer join employees e1 on c1.id=e1.id;

select m1.operator,c1.name as company_name,m1.numb as mobile_number,e1.name as empl_name, m1.price,e1.degree from mobile m1 inner join company c1 on m1.numb is not null and c1.mid=m1.mid right outer join employees e1 on c1.id=e1.id and c1.id=e1.id inner join employees e1;





drop schema addm;