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

-- 1. Basic limit usage
select * from Employee limit 2;

-- 2. limit with order by clause
select * from Employee order by salary desc limit 3;

-- 3. Ex skipping first 2 rows and fetching 2 rows
select * from Employee order by salary desc limit 3 offset 2;

-- 4. fetching the 3rd highest age
select salary from Employee order by salary limit 2, 1;