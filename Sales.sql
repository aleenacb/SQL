drop database sales;
create database sales;
use sales;
/*Create sales table*/
create table sales(
 sale_id int primary key,
 product_id int,
 quantity_sold int,
 sale_date date,
 total_price decimal(10, 2)
 );
 /*Insert sample data*/
 insert into sales(sale_id, product_id, quantity_sold, sale_date, total_price) values 
 (1, 101, 5, '2024-01-01',2500.0),
 (2, 102, 3, '2024-01-02',900.0),
 (3, 103, 2, '2024-01-03',800.0),
 (4, 104, 1, '2024-01-04',700.0),
 (5, 105, 4, '2024-01-05',90.0);
 
 select * from sales;
 
 select sale_id, sale_date from sales;
 
 select * from sales where total_price > 1000;
 
select sale_id, total_price from sales 
where sale_date = '2024-01-02';