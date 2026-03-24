drop database Employees;
create database Employees;
use Employees;

create table Employees(
EmployeeID int primary key,
EmpName varchar(50),
department varchar(25),
age int,
country varchar(50),
salary int
);

insert into Employees(EmployeeId, EmpName, department, age, country, salary) values
(1, "Emma", "HR", 25, 'Britain', 500000),
(2, "Daniel", "IT", 30, 'France',520000),
(3, "Sophia", "Finance", 40, 'Spain',200000);

SET SQL_SAFE_UPDATES = 0;

select EmpName, Department, salary from Employees
where salary > 60000;

select * from Employees where age = 25;

select EmployeeID, EmpName, country from Employees where age > 25;

select * from Employees 
where age between 25 and 30;

select * from Employees 
where EmpName like 'E%';

select EmpName from Employees 
where age in(25, 40);