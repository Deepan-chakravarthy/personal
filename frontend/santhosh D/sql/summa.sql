create schema cricket;
use cricket;
create table cpl(team_id int  primary key,team_name varchar(25),country varchar(25),
matches_2012 int,foreign key (matches_2012)references matches_year2012(matches_2012),
matches_2013 int,foreign key (matches_2013)references matches_year2013(matches_2013)
);
drop  table cpl;
insert into cpl(team_name,country,matches_2012,matches_2013)values(' Afghanistan','afcanistan','11','1'),
(' Australia','Australia','12','2'),
('  England',' England','13','3'),
('  India',' India','14','4'),
('  Pakistan',' Pakistan','15','5');
drop table cpl;


create table matches_year2012(matches_2012  int auto_increment  primary key,
match_1 int,
match_2 int,
match_3 int,
match_4 int,
match_5 int,
match_6 int,
match_7 int,
match_8 int,
match_9 int,
match_10 int)auto_increment=10;
 drop table matches_year2012;
insert into matches_year2013 values(10,1,0,1,0,1,0,0,0,1,0),
(11,1,0,1,0,1,0,0,0,1,0),
(12,0,1,1,0,1,0,1,0,1,1),
(13,1,1,1,0,0,0,0,0,1,0),
(14,1,1,1,0,1,0,0,0,1,1);
drop table matches_year2012;

create table matches_year2013(matches_2013  int  primary key auto_increment ,
match_1 int,
match_2 int,
match_3 int,
match_4 int,
match_5 int,
match_6 int,
match_7 int,
match_8 int,
match_9 int,
match_10 int)auto_increment=11;
insert into matches_year2013 values(22,1,0,1,0,1,0,0,0,1,0),
(26,1,0,1,0,1,0,0,0,1,0),
(23,1,1,0,1,0,1,0,1,0,0),
(24,1,1,1,0,0,0,0,0,1,0),
(25,1,1,1,0,1,0,0,0,1,1);
 select * from matches_year2012;
drop table matches_year2012;
drop table matches_year2013;

insert into matches_year2013 values();
 select * from matches_year2013;

 desc matches_year2012;
select * from matches_year2012;
select * from matches_year2013;
   