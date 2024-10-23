create schema student_details;
use student_details;
create table student (id int,name varchar(20),age int,email_id varchar(30),mobile_no bigint,Address varchar(40),
street varchar(20),Area varchar(20),city varchar(20),district varchar(25),pincode int,state varchar(20),tamil int,english int,maths int,physics int,chemistry int,botany int,zoology int);
alter table student add first_name varchar(30) after name;
alter table student add Last_name varchar(20) after first_name;
describe student;
insert into student values(1,'sathiyaseelan','sathiya','seelan','24','sathiya@gmail.com',7010556776,'26 sri ram appartmrnt','malar street','veera nagar','mettur','salem',636404,'Tamilnadu',120,150,160,170,150,167,180),
(2,'sumandas','suman','das','22','suman@gmail.com',7010897898,'34 das illam','suman street','singam nagar','madurai','madurai',638978,'Tamilnadu',111,120,134,167,156,178,190),
(3,'santhoshsan','santhosh','sandy','22','sandy@gmail.com',7010890011,'22 sai sri illam','sandy street','kayal nagar','thiruvanaamalai','thiruvanaamalai',638979,'Tamilnadu',120,150,140,170,150,177,180),
(4,'surrendhar','surrendhar','suhen','22','avenger@gmail.com',7022897898,'45 kamls illam','gandhi street','siruthai nagar','kadaloore','kadaloore',639078,'Tamilnadu',130,150,160,170,160,167,180),
(5,'lenninlento','lennin','lento','22','lennin@gmail.com',7010097898,'91 lennin illam','lennin street','karadi nagar','thiruchi','thiruchi',648978,'Tamilnadu',120,150,160,170,150,127,190),
(6,'Antoadvento','Anto','anto','22','Anto@gmail.com',8010897898,'1st Anto house','Anto street','Anto nagar','thiruchi','thiruchi',637978,'Tamilnadu',140,150,160,180,150,167,180),
(7,'gabigabiryel','gabi','gabriyel','22','Gabi@gmail.com',9010897898,'2nd Gabi illam','Gabi street','cheeta nagar','Ambur','Ambur',658978,'Tamilnadu',120,160,160,170,150,137,120),
(8,'mukeshkumar','mukesh','raai','22','mukesh@gmail.com',7090897898,'mukesh illam','kovi street','malapula nagar','thiruvanathapuram','thiruvanathapuram',638978,'Kerala',90,150,160,170,180,167,180),
(9,'juhngopal','juhn','gobal','22','juhn@gmail.com',8090897898,'juhn illam','juhn street','kathi nagar','chennai','chennai',600024,'Tamilnadu',80,150,160,170,150,127,130),
(10,'michealjackshon','michael','jackshon','22','michael@gmail.com',9878897898,'machael illam','mickel street','karadi nagar','chennai','chennai',638808,'Tamilnadu',120,150,170,170,150,167,180);
select * from student;
alter table student add column Aadhaar_no varchar(10);
update student set Aadhaar_no='yes' where id in(1,3,5,7,9);
update student set Aadhaar_no='no' where id in(2,4,6,8,10);
select * from student;
update student set Aadhaar_no=1 where Aadhaar_no='yes';
update student set Aadhaar_no=0 where Aadhaar_no='no';
alter table student modify Aadhaar_no boolean;


