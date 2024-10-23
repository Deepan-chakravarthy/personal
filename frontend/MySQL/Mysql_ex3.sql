show tables;
create table student_marks(id int primary key auto_increment,name varchar(20),tamil int,english int, maths int, science int, social int);
insert into student_marks values(100,'Juan',78,45,56,67,78);
select*from student_marks;
insert into student_marks(name,tamil, english , maths, science,social)values('Prathani',67,78,67,78,56);
insert into student_marks(name,tamil, english , maths, science,social)values('Munna',89,78,89,67,78);
insert into student_marks(name,tamil, english , maths, science,social)values('Vijay',76,56,45,56,67);
insert into student_marks(name,tamil, english , maths, science,social)values('Ravi',56,76,87,78,89);

delete from student_marks where id=105;

create table trigger_table(id int primary key auto_increment,name varchar(20),tamil int,english int,maths int,science int,social int,time timestamp default now());
describe trigger_table;

create table trigger_table_insert(id int primary key auto_increment,name varchar(20),tamil int,english int,maths int,science int,social int,time timestamp default now());
describe trigger_table_insert;

create table trigger_table_update(id int primary key auto_increment,name varchar(20),tamil int,english int,maths int,science int,social int,time timestamp default now());
describe trigger_table_update;

create trigger trigger_name before delete on student_marks for each row insert into trigger_table(name,tamil,english,maths,science,social) values (old.name,old.tamil,old.english,old.maths,old.science,old.social);
create trigger trigger_insert after insert on student_marks for each row insert into trigger_table_insert(name,tamil,english,maths,science,social) values (new.name,new.tamil,new.english,new.maths,new.science,new.social);
create trigger trigger_update after update on student_marks for each row insert into trigger_table_update(name,tamil,english,maths,science,social) values (old.name,old.tamil,old.english,old.maths,old.science,old.social);

select*from trigger_table;
select*from trigger_table_insert;
select*from trigger_table_update;

select*from student_marks;

delete from student_marks where id=103;
update student_marks set name='sandy' where id=107;