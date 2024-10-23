SELECT * FROM hotel.menu;
create table hotel_name(
	id int primary key,
    name varchar(20),
    place varchar(30),
    contact int);
    drop table hotel;
    
    alter table menu drop column user_id;
    alter table menu drop column price;
    alter table menu drop foreign key menu_ibfk_1;
    alter table menu add column type varchar(10);
    
    update menu set items = 'Tandoori Chicken' where id=208;
    update menu set type = 'NV' where id=203;
    
    create table hotel_food_item_map(
		id int primary key,
        hotel_id int,
        menu_id int,
        price double,
        quantity int);
        
        select * from hotel_food_item_map;
        
        alter table hotel_food_item_map add foreign key (hotel_id) references hotel_name (id);
        
        alter table hotel_food_item_map add foreign key(menu_id) references menu(id);
        rename  table hotel_food_item_map to hotel_menu_map;
        
        create table customer_hotel_menu_map(
        id int primary key,
		customer_id int,
        h_f_menu_id int,
        date varchar(20),
        foreign key(customer_id) references customer(id),
        foreign key(h_f_menu_id) references hotel_menu_map(id));
        
        alter table hotel_name  modify column contact bigint;