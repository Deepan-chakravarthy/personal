use exp1;
create table exp1.stu 
(id int, name varchar(20), age int,email_id varchar(20), ph_no bigint, address varchar(100),eng int,tam int, mat int,phy int, chem int, bio int);
desc exp1.stu;
insert into exp1.stu(id,name ,age,email_id,ph_no,address,eng,tam,mat,phy,chem,bio) values 
(1,'ed',14,"ed@gamil.com",7890123456,'greenstreet ,gardenerion ,farmsia ,890567 ,greenland',56,56,85,45,75,65),
(2,'emma',12,"emma@gmail.com",1234123456,'watson street,greenwood,cnamadia,123321,gonden',95,85,45,65,85,85),
(3,'atlas',23,'atlas@gmail.com',4561237895,'artic street,stefhenwood,denmark,345123,chicago',85,47,48,86,88,75),
(4,'mishal',15,'mishal@gmail.com',7531594652,'manter street,marcoven,sweden,679678,scotland',98,65,45,87,75,86),
(5,'graham',17,'graham@gmail.com',7594612586,'walter street,draken,norway,987654,england',75,48,95,86,58,53),
(6,'jo',20,'jo@gmail.com',1590247852,'broklin street,central park,manhatten,290402,new york',98,87,89,95,85,85),
(7,'alan',24,'alan@gmail.com',0136547895,'HAK street,thalakulam,madurai,625002,Tamil nadu',89,65,45,78,48,89),
(8,'nate',04,'nate@gmail.com',1574236855,'manatar street,ashok nager,chennai,625081,tamil nadu',68,57,48,59,89,45),
(9,'jane',12,'jane@gmail.com',1597531236,'roosvalt street,guanvar,prais,234234,france',89,78,45,65,86,75),
(10,'alexin', 10,'alexink@gmail.com',7891234565,'wisley street,romirya,makiacan,234234,italy',86,75,48,59,68,89);

alter table exp1.stu add first_name varchar(30) after name;
alter table exp1.stu add last_name varchar(20) after first_name;
alter table exp1.stu add column aadhar varchar(10);

select count(id) as No_of_students from exp1.stu;
select max(eng) as Maximum_mark_in_english from exp1.stu group by id;
select min(eng) as Minimum_mark_in_english from exp1.stu;

update exp1.stu set aadhar= 'yes' where id in (1,2,6,7,10);
set sql_safe_updates=0;
update exp1.stu set aadhar = 'no' where id in (3,4,5,8,9);
update exp1.stu set aadhar = 1 where aadhar ='yes';
update exp1.stu set aadhar = 0 where aadhar ='no';
alter table exp1.stu modify aadhar boolean;

select * from students where age in (35,63,42,70);