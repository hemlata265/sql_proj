create database myntra;
use myntra;
create table order_items(order_id int primary key,
						product_id int,
                        quantity int);
                        
insert into order_items values (101,201,1),
								(102,202,6);
insert into order_items values (110,205,11),
                                (106,206,23),
                                (107,207,2),
                                (108,208,5);
                                select * from order_items;


create table countries(c_code int primary key,
name varchar(200),
continent_name varchar(200));

insert  countries values(890,'india','asia');
insert  countries values(891,'nepal','asia'),

(892,'denmark','erope'),
(894,'egypt','africa');

create table users1(id int primary key,
c_code int,
fullname varchar(200),
email varchar(200),
gender varchar(20),
date_of_birth varchar(200),

created_at varchar(200)
);
create table orders( order_id int,
					user_id int,
                    statuss varchar(20),
                    created_at varchar(50));
create table products(id int primary key,

						marchant_id int,
                        pname varchar(50),
                        price int,
                        statuss varchar(50),
                        created_at varchar(50));
create table marchants(id int primary key,
						marchant_name varchar(20),
                        admin_id int,
                        country_code int,
                        created_at varchar(20));
                    
			
                    

                                