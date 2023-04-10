use thiru;
select * from student;
select count(stud_name) from student;
select id,stud_name, age  from student where age<23;

ALTER TABLE student ADD tamil int;
alter table student add eng int;
alter table student add maths int;
					alter table student add physics int;
                    alter table student add chemistry int;
select * from student;
update student set tamil = 82, eng=98,maths=77,physics=89,chemistry=62 where id =100;
update student set tamil = 72, eng=54,maths=89,physics=67,chemistry=55 where id =101;
update student set tamil = 88, eng=45,maths=87,physics=48,chemistry=81 where id =103;
select id,stud_name,age, max(tamil) as MAX_OF_TAMIL, id,stud_name,age, max(maths) as MAX_ENGLISH FROM student;
select id,stud_name,age, max(tamil) as MAX_OF_TAMIL FROM student;
select stud_name,tamil from student where tamil =( select min(tamil)  from student);
select stud_name,eng from student where eng =(select min(eng) from student);

alter table student add column standard  int;
insert into student (id) value (110);
update student set tamil = 84, eng=92,maths=67,physics=78,chemistry=91 where id =102;
update student set tamil = 66, eng=83,maths=56,physics=87,chemistry=44 where id =104;
update student set tamil = 98, eng=90,maths=42,physics=28,chemistry=80 where id =105;
update student set tamil = 68, eng=84,maths=89,physics=83,chemistry=46 where id =106;
update student set tamil = 47, eng=70,maths=80,physics=98,chemistry=41 where id =107;
update student set tamil = 40, eng=55,maths=61,physics=89,chemistry=65 where id =108;
update student set tamil = 59, eng=62,maths=56,physics=24,chemistry=85 where id =109;
update student set standard=12 where id in ( 100,101,102,103,104,105,106,107,108,109);

alter table student add column section char;
update student set stud_name='kannan', age =28, tamil=51,eng=32,maths=45,physics=40,chemistry=30 where id= 110;
select * from student;
update student set section = 'b' where id in(101,107,108);
update student set section = 'a' where id in(102,103,109);
update student set section = 'c' where id in(104,106);
update student set section = 'd' where id in(105,108,100);
select stud_name,eng from student where eng =(select min(eng) from student);
select  sum(tamil) as total from thiru.student;

select stud_name,physics from student where physics <35;

create table cricket(
				id int,
                country varchar(10),
                yrs int,
                played varchar(10),
                win varchar(10),
                loss varchar(10));
                
select * from cricket;
alter table cricket modify column loss int;

insert cricket (id,ountry,yrs,played,win,loss) values (101,'india',2018,'yes',1,0);

insert cricket (id,cuntry,yrs,played,win,loss) values (101,'india',2018,'yes',1,0);

insert cricket (id, country,yrs, played, win,loss) values (101,'india',2018,'played',1,0);
insert cricket(id,country,yrs,played,win,loss)values(101,'kenya',2011,'played',1,0);
truncate cricket;
select * from cricket;
insert cricket(id,country,yrs,played,win,loss)values(101,'kenya',2011,'played',1,0);
insert cricket(id,country,yrs,played,win,loss)values(102,'india',2019,'played',1,0);
