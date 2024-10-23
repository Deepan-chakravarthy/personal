use day1;
drop table students;
create table students (id int primary key auto_increment, name varchar(20), age int, email varchar(50), 
english int,maths int,physics int,chemistry int,tamil int);
alter table students auto_increment=5;
truncate students;
describe students;
insert into students (name, age, email, english, maths,physics,chemistry,tamil) values ('Gowtham Kumar',47,'gow@g.com',69,80,85,89,90);
select * from students;
insert into students (name, age, email, english, maths,physics,chemistry,tamil) values ('Mohan Kumar',40,'moh@g.com',69,80,85,89,90);
insert into students (name, age, email, english, maths,physics,chemistry,tamil) values ('Harish Ram',36,'har@g.com',69,80,85,89,90);
insert into students (name, age, email, english, maths,physics,chemistry,tamil) values ('SathyaRaj',38,'sat@g.com',69,80,85,89,90);
insert into students (name, age, email, english, maths,physics,chemistry,tamil) values ('Rajaram Mohan',42,'rajmohan@g.com',69,80,85,89,90);
insert into students (name, age, email, english, maths,physics,chemistry,tamil) values ('rithish',32,'rithish@g.com',69,80,85,89,90),
('nithish',22,'ninthish@g.com',69,80,85,89,90);

select name,age,email,(english+maths+physics+chemistry+tamil)/6 as total from students;

create table school_address(id int primary key,dno int,school_name varchar(20),street  varchar(20),district varchar(20),state varchar(20));
insert into school_address values(1,435,'SVMS','rose street','krishnagiri','tamilnadu'),(2,415,'AMHSC','jasmine street','krishnagiri','tamilnadu'),
(3,480,'DCS','sunflower street','krishnagiri','tamilnadu');
insert into school_address values(4,889,'adhiyamaan','pettel street','krishnagiri','tamilnadu'),(5,823,'mandhir','pettel street','krishnagiri','tamilnadu');
drop table school_address;
select * from school_address;

alter table students add column link_key int;

alter table students rename column link_key to school;

select * from students;

alter table students add foreign key(school) references school_address(id);

update students set school=3 where id =5;

describe students;

select * from students as stu right outer join school_address as addr on stu.school=addr.id order by addr.dno desc;
select school_name,count(addr.id) as count from students as stu right outer join school_address as addr on stu.school=addr.id group by school_name;
select * from students;
select * from school_address;

create table trigger_table (id int primary key auto_increment,name varchar(20),age int,email varchar(20),time timestamp default now());

select * from students;
select * from trigger_table;
describe trigger_table;

create trigger trigger_name before delete on students for each row insert into trigger_table(name,age,email) values(old.name,old.age,old.email);

delete from students where id = 7;

