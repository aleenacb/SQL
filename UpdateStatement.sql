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

-- update 
update Employees
set salary = 40000
where Empname = 'Daniel'; 

-- update single column
update Employees
set age = 32
where EmpName = 'Sophia';

select * from Employees;

-- update multiple columns
update Employees
set EmpName = 'John',
Country = 'Spain'
where EmployeeID = 1;

select * from Employees;