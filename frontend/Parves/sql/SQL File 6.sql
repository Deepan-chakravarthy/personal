create table qus1.ans2(id int, name varchar(20), age int, email_id varchar(25), mobile_no bigint, address varchar(100), tamil int, english int, maths int, physics int, chemistry int, biology int);
desc qus1.ans2;
insert into qus1.ans2(id, name, age, email_id, mobile_no, address,tamil,english,maths,physics,chemistry,biology) values
(1,'parves',22,'parves@gmail.com',9987765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',88,87,86,85,84,83),
(2,'ibraheem',18,'ibraheem@gmail.com',9887765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',84,85,86,87,88,89),
(3,'anwar',28,'anwar@gmail.com',9787765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',88,87,86,85,84,83),
(4,'refai',20,'refai@gmail.com',9687765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',88,87,86,85,84,83),
(5,'kalam',19,'kalam@gmail.com',9587765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',88,87,86,85,84,83),
(6,'warith',23,'warith@gmail.com',9487765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',88,87,86,85,84,83),
(7,'wajith',16,'wajith@gmail.com',9387765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',88,87,86,85,84,83),
(8,'uvyz',27,'uvyz@gmail.com',9287765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',88,87,86,85,84,83),
(9,'sharif',24,'sharif@gmail.com',9187765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',88,87,86,85,84,83),
(10,'satham',21,'satham@gmail.com',9087765432,'pudur,ilayangudi,sivagangai,630709,tamilnadu',88,87,86,85,84,83);
select * from qus1.ans2;
alter table qus1.ans2 change name first_name varchar(10);
alter table qus1.ans2 add last_name varchar(15) after first_name;
update qus1.ans1 set last_name = 'mushraf' where id = 1;
alter table qus1.ans2 add column Aadhar_No varchar(20);