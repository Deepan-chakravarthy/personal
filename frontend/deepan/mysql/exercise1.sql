use training;
create table students(
  id int primary key,
  name varchar(20),
  age int,
  mobile_no int,
  mail_id varchar(30),
  street varchar(50),
  area varchar(50),
  city varchar(20),
  district varchar(20),
  pincode int,
  state varchar(20),
  tamil int,
  english int,
  biology int
 );
 
 desc students;
 
 alter table students modify mobile_no bigint;
 
  insert into students values
  (1,'akash',15,1234567890,'akash@gmailcom','sakthi nagar','woraiyur','trichy','trichy',620003,'tamil nadu',50,99,70);
  
  insert into students values
  (2,'alan',17,1345678901,'alan@gmailcom','bheema nagar','woraiyur','trichy','trichy',620003,'tamil nadu',58,97,80),
  (3,'niranjan',14,3456789012,'niranjan@gmailcom','srinivasan nagar','thillainagar','trichy','trichy',620089,'tamil nadu',90,40,79),
  (4,'logesh',19,4567890123,'logesh@gmailcom','shanmuga nagar','vayalur road','trichy','trichy',620017,'tamil nadu',58,16,17),
  (5,'deepan',15,5678901234,'deepan@gmailcom','fathima nagar','woraiyur','trichy','trichy',620003,'tamil nadu',30,88,79),
  (6,'sandeep',17,6789012345,'sandeep@gmailcom',' vasan nagar','thillai nagar','trichy','trichy',620005,'tamil nadu',80,91,67),
  (7,'guru',19,7890123456,'guru@gmailcom','kumaran nagar','woraiyur','trichy','trichy',620001,'tamil nadu',51,39,89),
  (8,'vicky',18,1234554321,'vicky@gmailcom','vasan nagar','woraiyur','trichy','trichy',620005,'tamil nadu',59,98,76),
  (9,'lenin',17,6789009876,'lenin@gmailcom','sakthi nagar','woraiyur','trichy','trichy',620003,'tamil nadu',40,19,50),
  (10,'syed',19,3214567890,'syed@gmailcom','puravi  nagar','nochiyam','trichy','trichy',620013,'tamil nadu',90,29,87);
  
  alter table students add column first_name varchar(30) after name;
  alter table students add column last_name varchar(30) after first_name;
  alter table students add column aadhar boolean;
  
  update students 
  set first_name='akash',last_name='ag',aadhar=1
  where id=1;

  update students 
  set first_name='abcd',last_name='xyz',aadhar=0
  where id=5;
  
  select * from students;
  
   commit;
  
  
  

  