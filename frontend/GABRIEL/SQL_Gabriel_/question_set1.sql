create schema question_set_1;
create table  question_set_1.employee(id int, name varchar(20), age int,emailid varchar(30),phone_number varchar(10),address_door_no varchar(10),street varchar(20),area varchar(15),city varchar(20),district varchar(20),pincode int, state varchar(15));
describe table question_set_1.employee;
insert into question_set_1.employee(id , name, age ,emailid,phone_number,address_door_no ,street ,area ,city ,district ,pincode , state ) values(1,"gabi",22,"thomasgasper03@gmail.com",8248440204,421,"arisipalayam","four roads","salem","salem",636009,"tamilnadu");
select*from  question_set_1.employee;
insert into question_set_1.employee(id , name, age ,emailid,phone_number,address_door_no ,street ,area ,city ,district ,pincode , state )
 values(2,"tommy",23,"tommy@gmail.com",8086542231,221,"teachers colony","senthil nagar","dharmapuri","dharmapuri",650062,"tamilnadu"),
(3,"william",12,"william69@gmail.com",9864153289,772,"avvaiyar st","meiyanoor","tirupattur","vellore",624567,"tamilnadu"),
(4,"richard",42,"richard@gmail.com",8465297136,555,"chinnappan st","ak nagar","uthangarai","krishnagiri",624536,"tamilnadu"),
(5,"santosh",53,"santo07@gmail.com",9080489562,981,"perumal st","muniyappa nagar","pochamballi","dharmapuri",650072,"tamilnadu"),
(6,"suman",28,"sumand3@gmail.com",9091526384,241,"angamal colony","atc nagar","hamunthirutham","krishnagiri",624566,"tamilnadu"),
(7,"hemanth",37,"hemanth7@gmail.com",7256984665,522,"rajaji st","suramangalam","uthangarai","salem",624524,"tamilnadu"),
(8,"sathi",25,"sathi63@gmail.com",9635824718,370,"vallabhai st ","vkc nagar","edappadi","salem",652016,"tamilnadu"),
(9,"juan",22,"juan18@gmail.com",9854632874,856,"velacherry","nungapakkam","chennai","chennai",623001,"tamilnadu"),
(10,"surendhar",32,"surey99@gmail.com",9053624851,750,"narasingapuram","aarni","vellore","vellore",621456,"tamilnadu");
alter table question_set_1.employee rename column name to first_name ;
alter table question_set_1.employee add column last_name varchar(20) after first_name;
update question_set_1.employee set last_name="sachin" where id=1;
 update question_set_1.employee set last_name="dhoni" where id=2;
update question_set_1.employee set last_name="raina" where id=3;
update question_set_1.employee set last_name="virat" where id=4;
update question_set_1.employee set last_name="kohli" where id=5;
update question_set_1.employee set last_name="ashwin" where id=6;
update question_set_1.employee set last_name="shami" where id=7;
update question_set_1.employee set last_name="washi" where id=8;
update question_set_1.employee set last_name="nattu" where id=9;
update question_set_1.employee set last_name="johncena" where id=10;
alter table question_set_1.employee modify column age varchar(10);
