create schema exp4;

use exp4 ;
create table collage_list(id int,name varchar(20), age int,email_id varchar(20), ph_no bigint, street varchar(20), area varchar(20),city varchar(20),district varchar(20),
state varchar(20),pincode varchar(20), clg_name varchar(20),clg_code varchar(10),university_name varchar(20),semester int2,Tamil int,English int,Math int, phy int, chem int,
bio int, clg_door_no int, clg_street varchar(20), clg_area varchar(20), clg_city varchar(20) ,clg_district varchar(20),clg_pincode varchar(20),clg_state varchar(20),
year_of_passout int, first_name varchar(20),last_name varchar(20));

insert into collage_list(id, name , age, email_id, ph_no, street, area, city, district, state, pincode, clg_name, clg_code, university_name, semester, Tamil, English,
Math, phy, chem, bio, clg_door_no, clg_street, clg_area, clg_city, clg_district, clg_pincode, clg_state, year_of_passout, first_name, last_name) values 
(1,'ed sam',24,"ed@gamil.com",7890123456,'greenstreet','gardenerion' ,'greenland' ,'greenland','famsia','890567','SJC',1234,'barathidasan',1,56,56,85,45,75,65,04,'brittio street',
'thepakulam','trichy','trichy',120056,'tamil nadu',2015,'ed','sam'),
(2,'emma watson',22,"emma@gmail.com",1234123456,'watson street','greenwood','cnamadia','gonden','londen',123321,'SJC',1234,'barathidasan',1,95,85,45,65,85,85,04,'brittio street',
'thepakulam','trichy','trichy',120056,'tamil nadu',2015,'emma','watson'),
(3,'atlas dan',23,'atlas@gmail.com',4561237895,'artic street','stefhenwood','denmark','chicago','canada',345123,'JMC',4567,'alagappan',2,85,47,48,86,88,75,09,'jamal street',
'palakari','sivagangai','sivagangai',650098,'tamil nadu',2016,'atlas','dan'),
(4,'mishal weller',25,'mishal@gmail.com',7531594652,'manter street','marcoven','sweden','scotland','turkish',679678,'JMC',4567,'alagappan',2,98,65,45,87,75,86,09,'jamal street',
'palakari','sivagangai','sivagangai',650098,'tamil nadu',2016,'mishal','weller'),
(5,'graham parker',27,'graham@gmail.com',7594612586,'walter street','draken','norway','england','british',987654,'AMC',7890,'anna',3,75,48,95,86,58,53,02,'martin street',
'goripalyam','madurai','madurai',450089,'tamil nadu',2017,'graham','parker'),
(6,'jo max',20,'jo@gmail.com',1590247852,'broklin street','central park','manhatten','new york','USA',290402,'BHC',9902,'barathidasan',4,98,87,89,95,85,85,04,'bishop street',
'puthur','trichy','trichy',120056,'tamil nadu',2022,'jo','max'),
(7,'alan stephen',24,'alan@gmail.com',0136547895,'HAK street','thalakulam','madurai','madurai','Tamil nadu',625002,'BHC',9902,'barathidasan',4,89,65,45,78,48,89,04,'bishop street',
'puthur','trichy','trichy',120056,'tamil nadu',2020,'alan','stephen'),
(8,'nate turner',24,'nate@gmail.com',1574236855,'manatar street','ashok nager','chennai','chennai','tamil nadu',625081,'AMC',7890,'anna',3,68,57,48,59,89,45,02,'martin street',
 'goripalyam', 'madurai','madurai',450089,'tamil nadu',2016,'nate','turner' ),
(9,'mary jane ',22,'jane@gmail.com',1597531236,'roosvalt street','guanvar','prais','prais','france',234234,'HLC',9536,'anna',5,89,78,45,65,86,75,02,'queen street',
'singarathopu','trichy','trichy',120056,'tamil nadu',2017,'mary','jane'),
(10,'alexin roy', 20,'alexink@gmail.com',7891234565,'wisley street','romirya','makiacan','makiacan','italy',234234,'HLC',9536,'anna',5,86,75,48,59,68,89,02,'queen street',
'singarathopu','trichy','trichy',120056,'tamil nadu',2017,'alexin','roy');  

select * from collage_list;
alter table collage_list add column aadhar varchar(10);
update collage_list set aadhar= 'yes' where id in (1,2,6,7,10);
set sql_safe_updates=0;
update collage_list set aadhar = 'no' where id in (3,4,5,8,9);
update collage_list set aadhar = 1 where aadhar ='yes';
update collage_list set aadhar = 0 where aadhar ='no';
alter table collage_list modify aadhar boolean;

-- To find the avg value 
select first_name,semester, avg(Tamil+English+Math+phy+chem+bio)/6 as average from collage_list group by semester ;

-- To find the maximum value of a particular semester:
select id,clg_name,name,year_of_passout,min(Tamil+English+Math+phy+chem+bio) as max_mark from collage_list where semester=5;

-- update degree and department column and value 
alter table collage_list add degree varchar(10);
update collage_list set degree = 'UG' where id in (1,2,6,7,10);
update collage_list set degree = 'PG' where id in (3,4,5,8,9);
alter table collage_list add dept varchar(10);
update collage_list set dept='English' where id in (1,2,6,7,10);
update collage_list set dept = 'CS' where id in (3,4);
update collage_list set dept = 'bcom' where id in (5,8,9);

-- To find the minimum  total_mark in the table 
select id,name,dept,min(Tamil+English+Math+phy+chem+bio) as minimum_mark from collage_list; 