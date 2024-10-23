create schema question_set_2;
                                    <------creating student table -------->
                                    
create table  question_set_2.student(id int, name varchar(20), age int,emailid varchar(30),phone_number varchar(10),address_door_no varchar(10),street varchar(20),area varchar(15),city varchar(20),district varchar(20),pincode int, state varchar(15),tamil int,english int,maths int,physics int,chemistry int,biology int);
describe table question_set_2.student;
                                   <-----------inserting table values-------->
                                   
insert into question_set_2.student(id , name, age ,emailid,phone_number,address_door_no ,street ,area ,city ,district ,pincode , state,tamil ,english ,maths ,physics ,chemistry ,biology ) 
values(1,"gabi",22,"thomasgasper03@gmail.com",8248440204,421,"arisipalayam","four roads","salem","salem",636009,"tamilnadu",85,45,65,95,56,66),
(2,"tommy",23,"tommy@gmail.com",8086542231,221,"teachers colony","senthil nagar","dharmapuri","dharmapuri",650062,"tamilnadu",75,35,65,96,19,67),
(3,"william",12,"william69@gmail.com",9864153289,772,"avvaiyar st","meiyanoor","tirupattur","vellore",624567,"tamilnadu",81,35,60,95,29,62),
(4,"richard",42,"richard@gmail.com",8465297136,555,"chinnappan st","ak nagar","uthangarai","krishnagiri",624536,"tamilnadu",82,36,55,95,99,66),
(5,"santosh",53,"santo07@gmail.com",9080489562,981,"perumal st","muniyappa nagar","pochamballi","dharmapuri",650072,"tamilnadu",83,37,65,91,100,60),
(6,"suman",28,"sumand3@gmail.com",9091526384,241,"angamal colony","atc nagar","hamunthirutham","krishnagiri",624566,"tamilnadu",84,38,66,92,92,61),
(7,"hemanth",37,"hemanth7@gmail.com",7256984665,522,"rajaji st","suramangalam","uthangarai","salem",624524,"tamilnadu",85,35,65,95,49,62),
(8,"sathi",25,"sathi63@gmail.com",9635824718,370,"vallabhai st ","vkc nagar","edappadi","salem",652016,"tamilnadu",86,35,65,25,99,66),
(9,"juan",22,"juan18@gmail.com",9854632874,856,"velacherry","nungapakkam","chennai","chennai",623001,"tamilnadu",87,35,75,95,77,66),
(10,"surendhar",32,"surey99@gmail.com",9053624851,750,"narasingapuram","aarni","vellore","vellore",621456,"tamilnadu",88,46,65,95,66,46);
select*from  question_set_2.student;
                                    ---------- adding first_name varchar(30),last_name varchar(20) --------
alter table   question_set_2.student add column first_name varchar(30),add column last_name varchar(20);
update question_set_2.student set  first_name ="gabreil", last_name="thomas" where id=1;
update question_set_2.student set  first_name ="virat", last_name="kohli" where id=2;
update question_set_2.student set  first_name ="msd", last_name="tom" where id=3;
update question_set_2.student set  first_name ="sachin", last_name="khan" where id=4;
update question_set_2.student set  first_name ="umran", last_name="malik" where id=5;
update question_set_2.student set  first_name ="fazil", last_name="ahmed" where id=6;
update question_set_2.student set  first_name ="mhmd", last_name="shami" where id=7;
update question_set_2.student set  first_name ="irfan", last_name="khan" where id=8;
update question_set_2.student set  first_name ="bhuvi", last_name="kumar" where id=9;
update question_set_2.student set  first_name ="suman", last_name="dev" where id=10;
----------- disabling sql safe update mode--------
set sql_safe_updates=0;
----------- adding aadhar_value varchar(5) --------
alter table  question_set_2.student add aadhar_value varchar(5);
----------- updating null values with "true" and "false"--------
update question_set_2.student set  aadhar_value ="true"  where id=1;
update question_set_2.student set   aadhar_value ="false" where id=2;
update question_set_2.student set   aadhar_value ="true" where id=3;
update question_set_2.student set   aadhar_value ="false" where id=4;
update question_set_2.student set   aadhar_value ="true" where id=5;
update question_set_2.student set   aadhar_value ="false" where id=6;
update question_set_2.student set   aadhar_value ="true" where id=7;
update question_set_2.student set   aadhar_value ="false" where id=8;
update question_set_2.student set   aadhar_value ="true" where id=9;
update question_set_2.student set  aadhar_value ="false" where id=10;
----------- updating "true" and "false" with 1 and 0 -------
update  question_set_2.student set  aadhar_value ="1" where aadhar_value ="true";
update  question_set_2.student set  aadhar_value ="0" where aadhar_value ="false";
----------- modifying column data type aadhar varchar to boolean-------
alter table  question_set_2.student modify column aadhar_value boolean;
select*from  question_set_2.student;
------------------------- sql day 2 -------22/07/2022
create schema question_set_3;
create table  question_set_3.student(id int, name varchar(20), age int,email varchar(30),mobile_number varchar(10),street varchar(20),area varchar(15),city varchar(20),pincode int, state varchar(15),college_name varchar(30),college_code int,university_name varchar(30),semester int, tamil int,english int,maths int,physics int,chemistry int,biology int,college_door_no int,college_street varchar(30),college_area varchar(30),college_city varchar(20),college_district varchar(20),college_pincode varchar(6),college_state varchar(20),pass_out_year int,first_name varchar(30),last_name varchar(20));
describe table question_set_3.student;
select*from  question_set_3.student;


















