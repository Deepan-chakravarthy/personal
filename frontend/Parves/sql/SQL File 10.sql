drop schema exc3;
create schema exc3;
use exc3;
create table student (stu_id int, name varchar(10), location varchar(20), clg_name varchar(20), bus_id int, primary key (stu_id), foreign key(bus_id) references bus(bus_id));
insert into student (stu_id,name, location, clg_name, bus_id) values (1, 'parves', 'tolgate', 'jamal', 11),
(2, 'mushraf', 'tolgate', 'jamal',11),
(3, 'venkat', 'thillai nagar', 'bhc',22),
(4, 'alan', 'thillai nagar', 'bhc',22),
(5, 'deepan', 'chathiram', 'sjc',33),
(6, 'vicky', 'chathiram', 'sjc',33),
(7, 'sathya', 'karumandabam', 'national',44),
(8, 'santhosh', 'karumandabam', 'national',44),
(9, 'lenin', 'mathur', 'miet',55), 
(10, 'mani', 'mathur', 'miet',55);

alter table student add foreign key(clg_id) references college(clg_id);

alter table student add column clg_id int after stu_id;
update student set clg_id =5 where bus_id =55;

select * from student;

create table college (clg_id int not null auto_increment, clg_name varchar(20), clg_location varchar(20), primary key(clg_id));
insert into college(clg_name,clg_location) values ('jamal', 'tolgate'), 
('bhc', 'thillai nagar'),
('sjc', 'chathiram'),
('national', 'karumandabam'),
('miet', 'mathur');

select * from college;

create table bus (bus_id int, bus_name varchar(20), bus_type varchar(20), primary key(bus_id));
insert into bus(bus_id,bus_name,bus_type) values (11,'setc', 'government'),
(22,'setc', 'government'),
(33,'setc', 'government'),
(44,'pla', 'private'),
(55,'pla', 'private');
update bus set bus_type = 'government' where bus_id in (11,22,33);
update bus set bus_type = 'private' where bus_id in (44,55);

select * from bus;

create table driver (driver_id int, driver_name varchar(20), shift varchar(10), bus_id int);
insert into driver(driver_id,driver_name,shift,bus_id) values (1, 'ramu', 'day', 11),
(2, 'somu', 'night', 11),
(3, 'qamu', 'day', 22),
(4, 'pamu', 'night', 22),
(5, 'yamu', 'day', 33),
(6, 'tamu', 'night', 33),
(7, 'hamu', 'day', 44),
(8, 'ramu', 'night', 44),
(9, 'mamu', 'day', 55),
(10, 'camu', 'night', 55);

alter table driver add foreign key(bus_id) references bus(bus_id);

select * from driver;