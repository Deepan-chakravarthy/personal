/*
 create table with cric team with their country and 
 get yearly data of each team above the win and lose and
 get which team has maxi win and maxi lose and 
 get top team on the basis of win.
 */
 
 create schema ipl;
 use ipl;
 
 create table team(
  team_id int auto_increment primary key,
  team_name varchar(50),
  state varchar(20),
  year_2020 int,
  year_2021 int,
  year_2022 int,
  foreign key (year_2020) references 2020_matches(year_2020),
  foreign key (year_2021) references 2021_matches(year_2021),
  foreign key (year_2022) references 2022_matches(year_2022)
  );
  
 create table 2020_matches(
   year_2020 int auto_increment primary key,
   league1 varchar(5),
   league2 varchar(5),
   league3 varchar(5),
   league4 varchar(5),
   league5 varchar(5),
   league6 varchar(5),
   league7 varchar(5),
   league8 varchar(5),
   league9 varchar(5),
   league10 varchar(5)
   );
   
 create table 2021_matches(
   year_2021 int auto_increment primary key,
   league1 varchar(5),
   league2 varchar(5),
   league3 varchar(5),
   league4 varchar(5),
   league5 varchar(5),
   league6 varchar(5),
   league7 varchar(5),
   league8 varchar(5),
   league9 varchar(5),
   league10 varchar(5)
   );
   
 create table 2022_matches(
   year_2022 int auto_increment primary key,
   league1 varchar(5),
   league2 varchar(5),
   league3 varchar(5),
   league4 varchar(5),
   league5 varchar(5),
   league6 varchar(5),
   league7 varchar(5),
   league8 varchar(5),
   league9 varchar(5),
   league10 varchar(5)
   );
   
  
  insert into 2020_matches (league1, league2, league3, league4, league5, league6, league7, league8, league9, league10) values
  ('win','lose','lose','win','win','win','lose','win','lose','lose'),
  ('lose','win','lose','lose','win','win','win','lose','win','lose'),
  ('win','lose','win','lose','win','win','win','lose','win','lose'),
  ('win','lose','win','win','win','win','lose','win','lose','win'),
  ('lose','lose','lose','win','lose','win','lose','win','lose','lose');
  
  insert into 2021_matches (league1, league2, league3, league4, league5, league6, league7, league8, league9, league10) values
  ('lose','win','lose','lose','win','win','win','lose','win','lose'),
  ('win','lose','win','lose','win','win','win','lose','win','lose'),
  ('win','lose','win','win','win','win','lose','win','lose','win'),
  ('lose','lose','lose','win','lose','win','lose','win','lose','lose'),
  ('win','lose','lose','win','win','win','lose','win','lose','lose');
  
  insert into 2022_matches (league1, league2, league3, league4, league5, league6, league7, league8, league9, league10) values
  ('win','lose','win','win','win','win','lose','win','lose','win'),
  ('lose','lose','lose','win','lose','win','lose','win','lose','lose'),
  ('win','lose','lose','win','win','win','lose','win','lose','lose'),
  ('win','lose','win','lose','win','win','win','lose','win','lose'),
  ('win','lose','win','lose','win','win','win','lose','win','lose');
  
  insert into team(team_name,state,year_2020,year_2021,year_2022) values
  ('rcb','karnataka',1,1,1),
  ('csk','tamil_nadu',2,2,2),
  ('kkr','west_bengal',3,3,3),
  ('mi','maharastra',4,4,4),
  ('dd','delhi',5,5,5);
  
  -- join three tables---
  
  select * from team 
  inner join 2020_matches on
  2020_matches.year_2020=team.year_2020
  inner join 2021_matches on
  2021_matches.year_2021=team.year_2021
  inner join 2022_matches on
  2022_matches.year_2022=team.year_2022;
  
  -------------------------

  