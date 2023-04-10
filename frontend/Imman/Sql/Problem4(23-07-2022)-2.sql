Create Schema Busproblem;
use Busproblem;
create table college(Id int not null auto_increment,Name varchar(20),College_id int not null,Bus_id int not null,primary key(Id));
insert into college(Name,College_id,Bus_id)values
('Imman',105,121),('Jai',105,121),('Jemi',105,121),('Suresh',210,121),('Ram',210,122),
('Karan',105,123),('Ramesh',105,124),('Tom',105,125),('Sam',105,125),('Varun',105,221),
('Nithish',210,221),('Nithya',210,221),('Lavanya',210,221),('Rajaram',105,222),('Hema',210,224),
('Akash',105,223),('Priyanka',210,222),('Sonali',210,121),('Abi',105,223),('Hari Prabha',210,121);
select * from college;
create table college_name(College_id int not null,College_Name varchar(20));
insert into college_name(College_id,College_Name)values(105,'Prist'),(210,'Sastra');
select * from college_name;
create table Bus_Details(Bus_id int not null,Bus_Name varchar(20),Driver_Id int not null);
insert into Bus_Details(Bus_id,Bus_Name,Driver_Id)values
(121,'P1',456),(122,'P2',457),(123,'P3',458),(124,'P4',459),(125,'P5',460),
(221,'G1',546),(222,'G2',547),(223,'G3',548),(224,'G4',549),(225,'G5',550);
select * from Bus_Details;
/*create table Bus_Driver_Details(Driver_Name varchar(20) not null,Driver_id int not null,Bus_Name varchar(20));
insert into  Bus_Driver_Details(Driver_Name,Bus_Name,Driver_id)values
('Raju','P1',456,),('Karthick','P2',457),('Ashokan','P3',458),('Nirmal','P4',459),('Keerthi','P5',460),
('Ragul','G1',546),('Yogesh','G2',547),('Mani','G3',548),('Prasana','G4',549),('Aakash','G5',550);*/

create table Bus_Driver_Details(Driver_Name varchar(50) not null,Driver_id int not null,Bus_Name varchar(20),Time_ int not null);
insert into  Bus_Driver_Details(Driver_Name,Bus_Name,Driver_id,Time_)values
('Raju','P1',456,7),('Raju','P1',456,8),('Raju','P1',456,9),('Raju','P1',456,10),('Raju','P1',456,11),('Raju','P1',456,12),
('Suresh','P1',456,1),('Suresh','P1',456,2),('Suresh','P1',456,3),('Suresh','P1',456,4),('Suresh','P1',456,5),('Suresh','P1',456,6),
('Karthick','P2',457,7),('Karthick','P2',457,8),('Karthick','P2',457,9),('Karthick','P2',457,10),('Karthick','P2',457,11),('Karthick','P2',457,12),
('Anas','P2',457,1),('Anas','P2',457,2),('Anas','P2',457,3),('Anas','P2',457,4),('Anas','P2',457,5),('Anas','P2',457,6),
('Ashokan','P3',458,1),('Ashokan','P3',458,2),('Ashokan','P3',458,3),('Ashokan','P3',458,4),('Ashokan','P3',458,5),('Ashokan','P3',458,6),
('Aravind','P3',458,7),('Aravind','P3',458,8),('Aravind','P3',458,9),('Aravind','P3',458,10),('Aravind','P3',458,11),('Aravind','P3',458,12),
('Nirmal','P4',459,1),('Nirmal','P4',459,2),('Nirmal','P4',459,3),('Nirmal','P4',459,4),('Nirmal','P4',459,5),('Nirmal','P4',459,6),
('Naveen','P4',459,7),('Naveen','P4',459,8),('Naveen','P4',459,9),('Naveen','P4',459,10),('Naveen','P4',459,11),('Naveen','P4',459,12),
('Keerthi','P5',460,1),('Keerthi','P5',460,2),('Keerthi','P5',460,3),('Keerthi','P5',460,4),('Keerthi','P5',460,5),('Keerthi','P5',460,5),
('kevin','P5',460,7),('kevin','P5',460,8),('kevin','P5',460,9),('kevin','P5',460,10),('kevin','P5',460,11),('kevin','P5',460,12),
('Ragul','G1',546,1),('Ragul','G1',546,2),('Ragul','G1',546,3),('Ragul','G1',546,4),('Ragul','G1',546,5),('Ragul','G1',546,6),
('Rakesh','G1',546,7),('Ragul','G1',546,8),('Ragul','G1',546,9),('Ragul','G1',546,10),('Ragul','G1',546,11),('Ragul','G1',546,12),
('Yogesh','G2',547,1),('Yogesh','G2',547,2),('Yogesh','G2',547,3),('Yogesh','G2',547,4),('Yogesh','G2',547,5),('Yogesh','G2',547,6),
('Uvaraj','G2',547,7),('Uvaraj','G2',547,8),('Uvaraj','G2',547,9),('Uvaraj','G2',547,10),('Uvaraj','G2',547,11),('Uvaraj','G2',547,12),
('Mani','G3',548,1),('Mani','G3',548,2),('Mani','G3',548,3),('Mani','G3',548,4),('Mani','G3',548,5),('Mani','G3',548,6),
('Manoj','G3',548,7),('Manoj','G3',548,8),('Manoj','G3',548,9),('Manoj','G3',548,10),('Manoj','G3',548,11),('Manoj','G3',548,12),
('Prasana','G4',549,1),('Prasana','G4',549,2),('Prasana','G4',549,3),('Prasana','G4',549,4),('Prasana','G4',549,5),('Prasana','G4',549,6),
('Praveen','G4',549,7),('Praveen','G4',549,8),('Praveen','G4',549,9),('Praveen','G4',549,10),('Praveen','G4',549,11),('Praveen','G4',549,12),
('Aakash','G5',550,1),('Aakash','G5',550,2),('Aakash','G5',550,3),('Aakash','G5',550,4),('Aakash','G5',550,5),('Aakash','G5',550,6),
('Prakash','G5',550,7),('Prakash','G5',550,8),('Prakash','G5',550,9),('Prakash','G5',550,10),('Prakash','G5',550,11),('Prakash','G5',550,12);
select * from Bus_Driver_Details;
--
create view Travel_Details as
select college.Name,college.Bus_id,college_name.College_Name,Bus_Details.Bus_Name,Bus_Driver_Details.Time_,Bus_Driver_Details.Driver_Name from college inner join college_name on college.College_id=college_name.College_id inner join Bus_Details on college.Bus_id=Bus_Details.Bus_id inner join Bus_Driver_Details on Bus_Details.Driver_Id=Bus_Driver_Details.Driver_Id;
select * from Travel_Details;
--
create view Travel_Details_updated as
select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=121;
-- After Every Where We just drop view table to update the new searching value 
drop view Travel_Details_updated;
-- Total Count of Certain Bus
select distinct Bus_Name,count(Bus_id) as Total_Passenger from Travel_Details_updated group by Bus_id;
-- Filtering College
select distinct College_Name, Bus_Name,count(Bus_id) as Total_clg from Travel_Details_updated where College_Name='Sastra';

/*-------------------------------------------------------Time Between 1 and 6-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

create view P1 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=121)as t1 group by Bus_id;
create view P2 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=122)as t2 group by Bus_id;
create view P3 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=123)as t3 group by Bus_id;
create view P4 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=124)as t4 group by Bus_id;
create view P5 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=125)as t5 group by Bus_id;
create view G1 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=221)as t6 group by Bus_id;
create view G2 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=222)as t7 group by Bus_id;
create view G3 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=223)as t8 group by Bus_id;
create view G4 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=224)as t9 group by Bus_id;
create view G5 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 1 and 6) and bus_id=225)as t10 group by Bus_id;
--
-- Max & Min
Create view Maxmin as
select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from(select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from(select P1.Bus_Name,P1.Total_Passenger from P1 union select P2.Bus_Name,P2.Total_Passenger from P2)as u1 union select P3.Bus_Name,P3.Total_Passenger from P3)as u2 union select P4.Bus_Name,P4.Total_Passenger from P4)as u3 union select P5.Bus_Name,P5.Total_Passenger from P5)
as u4 union select G1.Bus_Name,G1.Total_Passenger from G1)as u5 union select G2.Bus_Name,G2.Total_Passenger from G2)as u6 union select G3.Bus_Name,G3.Total_Passenger from G3)as u7 union select G4.Bus_Name,G4.Total_Passenger from G4)as u8 union select G5.Bus_Name,G5.Total_Passenger from G5)as u9 ;
select * from Maxmin;
-- Max
select Bus_Name,Total_Passenger from Maxmin where Total_Passenger=(select max(Total_Passenger) from Maxmin);
-- Min
select Bus_Name,Total_Passenger from Maxmin where Total_Passenger=(select min(Total_Passenger) from Maxmin);


/*-------------------------------------------------------Time Between 7 and 12-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

create view P6 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 7 and 12) and bus_id=121)as t11 group by Bus_id;
create view P7 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 7 and 12) and bus_id=122)as t12 group by Bus_id;
create view P8 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 7 and 12) and bus_id=123)as t13 group by Bus_id;
create view P9 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 7 and 12) and bus_id=124)as t14 group by Bus_id;
create view P10 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 7 and 12) and bus_id=125)as t15 group by Bus_id;
create view G6 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 7 and 12) and bus_id=221)as t16 group by Bus_id;
create view G7 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 7 and 12) and bus_id=222)as t17 group by Bus_id;
create view G8 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 7 and 12) and bus_id=223)as t18 group by Bus_id;
create view G9 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between 7 and 12) and bus_id=224)as t19 group by Bus_id;
create view G10 as
select distinct Bus_Name,count(Bus_id) as Total_Passenger from (select distinct name,College_Name,Bus_Name,Bus_id,Driver_Name from Travel_Details where (Time_ between  7 and 12) and bus_id=225)as t20 group by Bus_id;
--
-- Max & Min
Create view Maxmin1 as
select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from(select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from (select Bus_Name,Total_Passenger from(select P6.Bus_Name,P6.Total_Passenger from P6 union select P7.Bus_Name,P7.Total_Passenger from P7)as w1 union select P8.Bus_Name,P8.Total_Passenger from P8)as w2 union select P9.Bus_Name,P9.Total_Passenger from P9)as w3 union select P10.Bus_Name,P10.Total_Passenger from P10)
as w4 union select G6.Bus_Name,G6.Total_Passenger from G6)as w5 union select G7.Bus_Name,G7.Total_Passenger from G7)as w6 union select G8.Bus_Name,G8.Total_Passenger from G8)as w7 union select G9.Bus_Name,G9.Total_Passenger from G9)as w8 union select G10.Bus_Name,G10.Total_Passenger from G10)as w9 ;
select * from Maxmin1;
-- Max
select Bus_Name,Total_Passenger from Maxmin1 where Total_Passenger=(select max(Total_Passenger) from Maxmin1);
-- Min
select Bus_Name,Total_Passenger from Maxmin1 where Total_Passenger=(select min(Total_Passenger) from Maxmin1);