drop database if exists bamazon_db;

create database bamazon_db;

use bamazon_db;

create table products(
  item_id int primary key auto_increment not null,
  product_name VARCHAR (50) NOT NULL unique, 
  department_name VARCHAR (30) NOT NULL,
  price DECIMAL(7,2) default 0.00,
  stock_quantity INT default 0
);

insert into products(product_name, department_name, price, stock_quantity)
values
("Nikes","Shoes",199.99,100), 
("7_for_All_mankind","Jeans",215.00,50), 
("Polo","Shirts",79.99,12), 
("Tommy Hilfiger","Socks", 12.99,15), 
("Hersheys","Candy", 1.99,50), 
("Pepsi","Soda",0.99,15), 
("Toyota","Cars",21999,10), 
("Calvin_Klein","Shirts",69.99,15),
("Aqua_Dio","Cologne",74.99,10), 
("T-shirt","Clothes",4.99,33);