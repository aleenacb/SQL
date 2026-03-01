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

insert into customer values(5, 'Isabella', 'Joe', 'Rome', 19, 895623741);

insert into customer (id, FirstName, age) values(106, 'Hiroshi', 20);

select * from customer;

insert into customer(id, FirstName, LastName, age) values (107, 'Mary', 'Curry', 20);

/*insert into customer */
select * from customer where age > 20;

select * from customer;

