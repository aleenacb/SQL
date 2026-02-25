/*Cloning or copy of table*/
drop database Employee;
create database Employee;
use Employee;

create table Employee(
id int primary key,
name varchar(50),
age int,
salary int
);
insert into Employee(id, name, age, salary) values 
(101, 'John', 28, 50000),
(102, 'Smith', 52, 40000),
(103, 'Charlie', 23, 50000),
(104, 'Bob', 30, 5000);

create table Employee_copy as Select * from Employee;