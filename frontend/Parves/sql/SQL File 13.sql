use ta1;
create table match_1(id int not null auto_increment, team varchar(20), win int, lose int, year int, primary key(id));
insert into match_1(team,win,lose,year) values ('india',8,4,2002),('england',7,5,2002),('australia',6,6,2002),('newzland',5,7,2002),
('southafrica',4,8,2002),('westindies',3,9,2002),('pakistan',2,10,2002),('srilanka',1,11,2002);

select team,win from match_1 where win=(select max(win) as maximum_win from match_1);
select team,lose from match_1 where lose=(select max(lose) as maximum_lose from match_1);


create table match_2(id int not null auto_increment, team varchar(20), win int, lose int, year int, primary key(id));
insert into match_2(team,win,lose,year) values ('india',7,5,2003),('england',6,6,2003),('australia',5,7,2003),('newzland',1,11,2003),
('southafrica',9,3,2003),('westindies',6,6,2003),('pakistan',4,8,2003),('srilanka',3,9,2003);


create table match_3(id int not null auto_increment, team varchar(20), win int, lose int, year int, primary key(id));
insert into match_3(team,win,lose,year) values ('india',6,6,2004),('england',5,7,2004),('australia',9,3,2004),('newzland',10,2,2004),
('southafrica',9,3,2004),('westindies',8,4,2004),('pakistan',4,8,2004),('srilanka',3,9,2004);

create table final(year int, team varchar(20));
insert into final(year,team) values (2002,'win'),(2003,'lose'),(2004,'percentage');

select year, team from final where team=(select max(team) maximum_win from final);

SELECT count(*) as Max_win FROM
match_1,match_2,match_3 as final;

select * from final;