use ta1;
create table cricket_team (id int not null auto_increment, year int, india varchar(10), pakistan varchar(10), australia varchar(10), south_africa varchar(10), england varchar(10), primary key(id));
insert into cricket_team (year,india,pakistan,australia,south_africa,england) values (2002, 'win', 'lose', 'lose', 'lose', 'lose'),
(2003, 'win', 'lose', 'lose', 'lose', 'lose'),
(2004, 'lose', 'win', 'lose', 'lose', 'lose'),
(2005, 'lose', 'lose', 'win', 'lose', 'lose'),
(2006, 'lose', 'lose', 'win', 'lose', 'lose'),
(2007, 'lose', 'lose', 'lose', 'win', 'lose'),
(2008, 'win', 'lose', 'lose', 'lose', 'lose'),
(2009, 'win', 'lose', 'lose', 'win', 'lose');



SELECT year, max(india) as Max_win FROM
`cricket_team` GROUP BY year;



SELECT year,
       COUNT(*) AS TotalGames,
       max( 'win' ) AS MaxWin,
       max( 'lose') AS MinLosses,
       AVG( 'win') AS WinPercentage
FROM cricket_team
GROUP BY year;


select * from cricket_team;
desc cricket_team;