
use cricket;
create table team (
	id int,
    country varchar(20),
    year int);
    
   create table record(
	id int,
    win int,
    loss int);
    truncate team;
    
    insert into team (id,country,year)values
			(101,'india', 2012),
            (102,'sri lanka',2015),
            (103,'england',2019);
            
alter table team add constraint pk_id primary key (id);
	
alter table record add foreign key (id) references team(id);

insert into record(id,win,loss) values
			(101,98,33);
alter table record add column tie int,
				 add column draw int;
                 
alter table record drop column draw;

select * from record;

alter table record drop foreign key record_ibfk_1;

select * from team;


insert into team (id,country,year)values
			(104,'windies', 2009),
            (105,'pakistan',2013);
