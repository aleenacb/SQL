/*Product table*/
 /*create table products*/
 drop database Products;
 create database Products;
 use Products;
 create table Products(
 product_id int primary key,
 product_name varchar(100),
 category varchar(50),
 unit_price decimal(10, 2)
 );
 /*Insert sample data into products table*/
 insert into products(product_id, product_name, category, unit_price) values
 (101, 'Laptop','Electronics',500.0),
 (102, 'Smartphone', 'Electronics', 700.0),
 (103, 'Headphones', 'Electromics', 400.0),
 (104, 'keyboard', 'Electronics', 800.0),
 (105, 'Mouse', 'Electronics', 19.0);
 
 select * from Products;

 select product_name, unit_price from products;
 
  select * from products where category = 'Electronics';
  
  select product_id, product_name from Products where unit_price > 500;