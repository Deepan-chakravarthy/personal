-- DDL commands --
create schema ironman;

create table ironman.suits(id int,name varchar(20),nick_name varchar(20),special_move varchar(20));
desc ironman.suits;
alter table ironman.suits change id suit_id varchar(10);
alter table ironman.suits modify name varchar(30); 
alter table ironman.suits rename column name to model;
alter table ironman.suits add column year_invent varchar(10);
alter table ironman.suits add column location varchar(10) after special_move;
 
 select * from ironman.suits;
 update ironman.suits set year_invent= null where model = "Mark I" ;
 set sql_safe_updates=0;
 truncate ironman.suits;
 insert into ironman.suits(suit_id,model,nick_name,special_move,location,year_invent) values (2,'Mark II','bad boy','tiny missle','ten-rings',2004);
 update ironman.suits set special_move = 'flame_thrower' where suit_id;
 select count(suit_id) from ironman.suits;
