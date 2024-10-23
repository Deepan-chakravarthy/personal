select* from vignesh.employ_table;

select *from vignesh.employ_table where name like"%ja%"  or name like "%ma%" or name like"%ta%" or name like"%aj%" or name like"%am%" or name like"%aj%";


alter table vignesh.employ_table add column last_name varchar(20);



update hemanth.employ_table set last_name="ashokkumar" where id=1;
set sql_safe_updates=0;
update vignesh.employ_table set last_name="ganeshkumar" where id=2;
update vignesh.employ_table set last_name="givindraj" where id=3;
update vignesh.employ_table set last_name="dineshkumar" where id=4;
update vignesh.employ_table set last_name="gopi" where id=5;
update vignesh.employ_table set last_name="kavi" where id=6;
update vignesh.employ_table set last_name="senthilkumar" where id=7;
update vignesh.employ_table set last_name="kannan" where id=8;
update vignesh.employ_table set last_name="muthukumar" where id=9;
update vignesh.employ_table set last_name="hari" where id=10;


select*from vignesh.employ_table;

select name,last_name from vignesh.employ_table where name like"%kumar%" and last_name like"%kumar%";