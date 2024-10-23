create schema qus1;

create table qus1.ans1(id int, name varchar(20), age int, email_id varchar(25), mobile_no bigint, address varchar(100));
insert into qus1.ans1(id, name, age, email_id, mobile_no, address) values (1,'parves',20,'parves@gmail.com',9987765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu');
select * from qus1.ans1;
insert into qus1.ans1 values
(2,'ibraheem',18,'ibraheem@gmail.com',9887765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu'),
(3,'anwar',28,'anwar@gmail.com',9787765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu'),
(4,'refai',20,'refai@gmail.com',9687765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu'),
(5,'kalam',19,'kalam@gmail.com',9587765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu'),
(6,'warith',23,'warith@gmail.com',9487765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu'),
(7,'wajith',16,'wajith@gmail.com',9387765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu'),
(8,'uvyz',27,'uvyz@gmail.com',9287765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu'),
(9,'sharif',24,'sharif@gmail.com',9187765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu'),
(10,'satham',21,'satham@gmail.com',9087765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu');
alter table qus1.ans1 change name first_name varchar(20);
alter table qus1.ans1 add last_name varchar(15) after first_name;
alter table qus1.ans1 modify column age varchar(5);
desc qus1.ans1;
update qus1.ans1 set last_name = 'hussain' where id = 10;
set sql_safe_updates=0;