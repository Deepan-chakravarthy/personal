use cricket;

create table cpl(team_id int  primary key,team_name varchar(25),country varchar(25),
matches_2012 int,foreign key (matches_2012)references matches_year2012(matches_2012),
matches_2013 int,foreign key (matches_2013)references matches_year2013(matches_2013)
);

insert into cpl(team_id,team_name,country,matches_2012,matches_2013)values(21,' Afghanistan','afcanistan',101,2),
(22,' Australia','Australia',102,3),
(23,'  England',' England',103,4),
(24,'  India',' India',104,5),
(25,'  Pakistan',' Pakistan',105,6);
create schema cricket;

create table matches_year2012(matches_2012  int  primary key,
match_1 int,
match_2 int,
match_3 int,
match_4 int,
match_5 int,
match_6 int,
match_7 int,
match_8 int,
match_9 int,
match_10 int);

 
insert into matches_year2012 values(101,1,0,1,0,1,0,0,0,1,0),
(102,1,0,1,0,1,0,0,0,1,0),
(103,0,1,1,0,1,0,1,0,1,1),
(104,1,1,1,0,0,0,0,0,1,0),
(105,1,1,1,0,1,0,0,0,1,1);



create table matches_year2013(matches_2013  int  primary key  ,
match_1 int,
match_2 int,
match_3 int,
match_4 int,
match_5 int,
match_6 int,
match_7 int,
match_8 int,
match_9 int,
match_10 int);
insert into matches_year2013 values(2,1,0,1,0,1,0,0,0,1,0),
(3,1,0,1,0,1,0,0,0,1,0),
(4,1,1,0,1,0,1,0,1,0,0),
(5,1,1,1,0,0,0,0,0,1,0),
(6,1,1,1,0,1,0,0,0,1,1);


SELECT *
  FROM cpl
  INNER JOIN matches_year2013
  ON matches_year2013.matches_2013 =cpl.matches_2013
  inner join matches_year2012
  on cpl.matches_2012=matches_year2012.matches_2012;
  
  --------------------------------- deepan solli koduthan;
  

select * from matches_year2012 union
select * from matches_year2013;
select * from cpl;
  

