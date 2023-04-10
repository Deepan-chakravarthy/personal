use training;
create table students (id int, name varchar(20), age int, email varchar(50), marks int, ranks int);

insert into students (id, name, age, email, marks, ranks) values (1,'Raju kumar',35,'raju@gmail.com',90,2);
insert into students (id, name, age, email, marks, ranks) values (2,'Ramesh Kumar',40,'ramesh@g.com',81,3);
insert into students (id, name, age, email, marks, ranks) values (3,'Suresh Babu',42,'suresh@g.com',72,4);
insert into students (id, name, age, email, marks, ranks) values (4,'Balaji',70,'bala@g.com',65,6);
insert into students (id, name, age, email, marks, ranks) values (5,'Kajith Raju',63,'kaj@g.com',40,7);
insert into students (id, name, age, email, marks, ranks) values (6,'Gowtham Kumar',47,'gow@g.com',69,5);
insert into students (id, name, age, email, marks, ranks) values (7,'Mohan Kumar',40,'moh@g.com',72,4);
insert into students (id, name, age, email, marks, ranks) values (8,'Harish Ram',36,'har@g.com',90,2);
insert into students (id, name, age, email, marks, ranks) values (9,'SathyaRaj',38,'sat@g.com',99,1);
insert into students (id, name, age, email, marks, ranks) values (10,'Rajaram Mohan',42,'rajmohan@g.com',81,3);

select*from students;

SELECT name,marks,ranks FROM students WHERE (age>37 and age<60) AND (marks>45 and name LIKE '%kumar');
SELECT name,marks,ranks FROM students WHERE (age>37 and age<60) AND (marks>45 and name LIKE '%kumar') order by ranks;
SELECT name,marks,ranks FROM students WHERE (age>37 and age<60) AND (marks>45 and name LIKE '%kumar') order by ranks limit 1;
SELECT name,marks,ranks FROM students WHERE age>37 and age<60 AND marks>45 and name LIKE '%kumar' order by ranks limit 1;

SELECT name,marks,ranks FROM students WHERE name like '%ra%' AND (age>40 OR marks>75); 
 
select name,marks,age,ranks from students where (email LIKE '%g.com%' AND marks<40 AND age>30 AND ranks=1);
select*from students;
select name,min(age),email,ranks from students order by marks limit 4;

get the list of students whose name should be any character befor 'a' and post 'a' it could be either or j or m or t add one more column ashok k,ganesh k, 
govindraj,dinesh k, gopi,kavi,senthil k,kannan,muthu k, hari.
get the list of students whose name and last name has kumar in it;

select*from students where (name LIKE '%aj%' or name LIKE '%am%' or name LIKE '%at%' or name LIKE '%ja%'
 or name LIKE '%ma%' or name LIKE '%ta%') OR(select*from students where name lIKE '%kumar%' or 'kumar%');
select*from students where name lIKE '%kumar%' OR 'kumar%';

select*from students;
age=35,63,42,70;
select*from students where age IN(35,63,42,70);

select age,count(age) from students group by age;
select age,count(age) from students group by age having count(age)>1;
select age,count(age) from students where age>38 group by age having count(age)>1;

desc table students;
SELECT count(*) AS students FROM information_schema.columns WHERE table_name ='students';


