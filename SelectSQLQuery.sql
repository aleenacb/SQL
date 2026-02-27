drop database customer;
create database customer;
use customer;
create table customer(
id int primary key,
FirstName varchar(50),
LastName varchar(50),
Country varchar(50),
Age int,
phone int(10)
);
insert into customer(id, FirstName, LastName, Country, Age, phone) values 
(101, "John", "Smith", "France",25, 895623789),
(102, "Charlie", "Ayya", "Italy", 30, 962354897),
(103, "Bob", "Rose", "German", 41, 523635412),
(104, "Sofia", "Miller", "British", 20, 896547136),
(105, "Ave", "Maria", "Paris", 21, 235641874);
-- specified columns
select id, FirstName from customer;
/*-- All columns*/
select * from customer;
/*where clause*/
select FirstName from customer where age = 21;

/*Group by clause*/
select country, count(*) as customer_count from customer group by Country;

-- Distinct clause
select distinct country from customer;

-- having clause
select country, count(*) as customer_count from customer group by country having count(*)  >= 0;

-- order by clause
select * from customer order by age desc;   