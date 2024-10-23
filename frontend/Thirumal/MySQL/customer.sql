SELECT * FROM hotel.customer;
use hotel;
alter table customer drop column address;
alter table customer drop column date;

insert into hotel_name (id,name,place,contact) value(501,'Grand Inn','Kumbakonam',9386838745),(503,'alif','Thanjavur',895682456),
			(504,'chetnad hotel','Chennai',9867834925);
            
             update hotel_name set name = 'Aasife' where id=504;
	
    update food_item set user_id = 1002 where id in (205,206,208);
update food_item set user_id = 1001 where id in (201,204,207);   
    update food_item set user_id = 1003 where id in (202,203);
    
    update trans set user_id = 1002 where id in (101,103);
update trans set user_id = 1001 where id in (102);
update trans set user_id = 1003 where id in (104);
             
             