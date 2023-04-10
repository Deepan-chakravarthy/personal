create schema kas;
use kas;

create table company(id int,company_name varchar(20),founder_year varchar(20));
insert into company(id,company_name,founder_year)values(1,'advento','2018');
 insert into company(id,company_name,founder_year)values(2,'zoho','2002');
 insert into company(id,company_name,founder_year)values(3,'CTS','2005');
 insert into company(id,company_name,founder_year)values(4,'TCS','2005');
 insert into company(id,company_name,founder_year)values(5,'CSSCORP','2015');
 
create table employee( eid int, name varchar(20), age int, email varchar(50), degree varchar(20), id int, foreign key(id) references company(id) , primary key(eid));
insert into employee(eid,name,age,email,degree,id)values(1,'manimaran',30,'maranravi2000@gmail.com','BCA',101);
insert into employee(eid,name,age,email,degree,id)values(2,'kamal',25,'kamalran30@gmail.com','MCA',102);
insert into employee(eid,name,age,email,degree,id)values(3,'ramprakash',28,'ramprakash00@gmail.com','BBA',103);
insert into employee(eid,name,age,email,degree,id)values(4,'harishram',40,'harishram400@gmail.com','BCom',104);
insert into employee(eid,name,age,email,degree,id)values(5,'chandravarun',38,'chandravarun00@gmail.com','MCA',105);
insert into employee(eid,name,age,email,degree,id)values(6,'imman',34,'imman80@gmail.com','MBAA',106);


create table mobile(mid int , numb varchar(20) , operator varchar(20) , network_speed int , eid int, foreign key(eid) references employees(eid) );
insert into mobile(mid,numb,operator,network_speed,eid) values(1,'8610200342','Airtel',10 ,2001);
insert into mobile(mid,numb,operator,network_speed,eid) values(2,'1234567890','voda',20 ,2002);
insert into mobile(mid,numb,operator,network_speed,eid) values(3,'9876543210','idea',30,2002);
insert into mobile(mid,numb,operator,network_speed,eid) values(4,'4567891230','Aircel',10,2003);
insert into mobile(mid,numb,operator,network_speed,eid) values(5,'9638521470','idea',40,2001);

drop table mobile;



drop schema kas;

select e1.name,m1.numb from employee e1 inner join mobile m1 on m1.numb is not null and e1.eid=m1.eid;
select e1.name,m1.numb,c1.name from employee e1 inner join mobile m1 on m1.numb is not null and e1.eid=m1.eid left outer join company c1 on c1.id=e1.id;




