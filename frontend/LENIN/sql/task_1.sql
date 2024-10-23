create schema first_assignments;

use first_assignments;

desc employee;

create table employee (id int , name varchar(20), age int, email_id varchar(50), mobile bigint, street varchar(15), area varchar(25), city varchar(25), district varchar(25), pincode int, state varchar(25), primary key(id) );

insert into employee values (11,'lenin',25,'leninraj@gmail.com',9597223423,'main road','natham','mayiladuthurai','nagapattinam',609118,'tamilnadu');

select * from employee;

insert into employee values (12,'rasu',48,'rasurasu02@gmail.com',9843077820,'sp pattinam','thondi','thiruvadanai','ramanadhapuram',609228,'tamilnadu'),
							(13,'sakravarthikumar',43,'kumarsakravarthi@gmail.com',9597883820,'karumathur','chekkanurani','aarapalyam','madurai',609110,'tamilnadu'),
                            (14,'kovind',30,'kovindhasamy2@gmail.com',9994177493,'jj street','market blog','ring road','white field',509128,'karnataka'),
                            (15,'karthika',19,'karthikakammi@gmail.com',9798905346,'jammal theru','sathram','main bus stand','trichy',609002,'andra pradesh'),
                            (16,'amali',34,'amaliamal777@gmail.com',9495768902,'kulathumedu','perunthurai','paramakudi','ramanadhapuram',609228,'tamilnadu'),
                            (17,'thivagar',48,'thivagar02@gmail.com',9876543590,'sp pattinam','thondi','thiruvadanai','ramanadhapuram',609228,'tamilnadu'),
                            (18,'kishore',37,'kishorebilk3s@gmail.com',9843000034,'special area','butterfly park','iron market','hebbal',552134,'karnataka'),
                            (19,'jenimal',49,'jenijeni@gmail.com',9843654789,'center road','redmilt','thurvakpal','kolikodu',567483,'kolkata'),
                            (20,'hitler',67,'hitlerblost@gmail.com',8765473829,'thirukundram','parama malai','kurinchi','kodaikanal',608763,'tamilnadu');

alter table employee rename column name to first_name;

alter table employee add column last_name varchar(15) after first_name; 

update employee set last_name='bomb' where id=20;
update employee set last_name='vedham' where id=12;
update employee set last_name='cibi' where id=13;
update employee set last_name='sami' where id=14;
update employee set last_name='karthi' where id=15;
update employee set last_name='amala' where id=16;
update employee set last_name='thor' where id=17;
update employee set last_name='birts' where id=18;
update employee set last_name='jeri' where id=19;

alter table employee modify column age varchar(3);





drop table employee;

delete from employee where id='12';