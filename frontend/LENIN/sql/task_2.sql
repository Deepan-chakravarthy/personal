create table student (id int , name varchar(20), age int, email_id varchar(50), mobile bigint, 
street varchar(15), area varchar(25), city varchar(25), district varchar(25), pincode int, state varchar(25),
tamil bigint,english bigint,maths bigint,chemistry bigint,physics bigint,biology bigint, primary key(id) );

use first_assignments;

desc student;

alter table student rename column name to first_name;
alter table student add column last_name varchar(20) after first_name; 
alter table student add column aadhar varchar(2) after last_name; 

insert into student values  (1,'sandran','settu','y','33','santhranbe@gmail.com',9998765431,'kamal street','karaipattinam','karaikal','karaikudi',576894,'tamilnadu',50,65,60,88,67,94);
insert into student values  (2,'reha','sertu','n','20','rehasertu@gmail.com',9998700031,'kamala street','pattinam','karaikal','karimedu',576894,'tamilnadu',56,69,68,88,67,98);


select * from student;

update student set aadhar=1 where aadhar='y';
update student set aadhar=0 where aadhar='n';
set sql_safe_updates=0;

alter table student modify aadhar boolean;

alter table student where age>37

drop table student; 