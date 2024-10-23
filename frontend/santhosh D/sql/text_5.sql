create schema cricket_match;
use cricket_match;
create table country_detail(id int primary key,country_team varchar(20),country varchar(20));
insert into country_detail values(1,'lkg','INDIA'),(2,'admk','PAKISTAN'),(3,'CSk','ENGLAND'),(4,'mi','AUSTRAILA'),
(5,'rrr','AFRICA'),(6,'erp','WEST'),(7,'swd','AFGANTHAN'),(8,'gtg','BANGADESH');

select*from country_detail;

create table 2017_detail(id int,no_of_win int,no_of_loss int);
alter table 2017_detail add foreign key(id) references country_detail(id);
insert into 2017_detail values(1,6,1),(2,5,2),(3,5,2),(4,2,5),(5,4,3),(6,5,2),(7,2,5),(8,3,4);
alter table 2017_detail add column year int after no_of_loss;
update 2017_detail set year=2012 where id=i;
select*from 2017_detail;

select country_detail.id,country_detail.country_team,country_detail.country,count(country_detail(2017_win)) as won from country_detail where count(country_detail(2017_win))=(select count(country_detail(2017_win)) from country_detail);

select id,country_team,country,2017_win from 2017_detail where 2017_win=(select 2017_win from 2017_detail) union
select id,country_team,country,2017_win from 2017_detail where 2017_win=(select 2017_win from 2017_detail);


create table 2018_detail(id int,no_of_win int,no_of_loss int);
alter table 2018_detail add foreign key(id) references country_detail(id);
insert into 2018_detail values(1,5,2),(2,2,5),(3,4,3),(4,4,3),(5,3,4),(6,2,5),(7,1,6),(8,2,5);
select*from 2018_detail;


create table 2019_detail(id int,no_of_win int,no_of_loss int);
alter table 2019_detail add foreign key(id) references country_detail(id);
insert into 2019_detail values(1,1,6),(2,1,6),(3,5,2),(4,6,1),(5,4,3),(6,3,4),(7,4,3),(8,5,2);
select*from 2019_detail;

select * from country_detail
inner join 2017_detail on
2017_detail.id=country_detail.id
inner join 2018_detail on
2018_detail.id=2017_detail.id
inner join 2019_detail on
2019_detail.id=2019_detail.id;
select count(no_of_win) from 2017_detail order by ;