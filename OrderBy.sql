drop database Employee;
create database Employee;
use Employee;
create table Employee(
 EmployeeID int primary key,
 EmpName varchar(50),
 Department varchar(25),
 salary int
 );
 
insert into Employee(EmployeeId, EmpName, Department, salary) values
(1, "Emma", "HR", 500000),
(2, "Daniel", "IT", 520000),
(3, "Sophia", "Finance", 200000),
(4, "Charlie", "Marketing", 800000),
(5, "Diana", "Sales", 750000);

select EmployeeID, EmpName, Department, salary from Employee order by salary desc;

-- 1. sort by a single column
select * from Employee order by EmployeeID desc;

-- 2. sort by multiple column
select * from Employee order by salary desc, EmpName asc; 

-- 3. sorting by column number
select EmployeeID, EmpName,  salary order by 1;