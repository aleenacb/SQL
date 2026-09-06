drop database EmployeeP;
create database EmployeeP;
use EmployeeP;

create table EmployeeP(
Employee_id int primary key,
First_Name varchar(50),
Last_Name varchar(50),
Department varchar(50),
salary decimal(10,2)
);


insert into EmployeeP(Employee_id, First_Name, Last_Name, Department, salary) values
(101, 'Karthika', 'Subramaniyan', 'IT', 200000.00),
(102, 'John', 'Bond', 'Sales', 400000.00),
(103, 'Martin', 'Luther', 'Executive', 300000);

select * from EmployeeP;

-- Distinct
select distinct Department from EmployeeP;

-- limit
select * from EmployeeP limit 1;  

-- offset
select * from EmployeeP limit 10000 offset 2;

-- Fetch
-- select * from EmployeeP fetch first 1 rows only; 

-- where
select * from EmployeeP where salary >= 300000; 

-- case
select First_Name, Last_Name, 
case
when salary > 400000 then 'High'
when salary > 300000 then 'Medium'
else 'low'
end as salary from EmployeeP;  

