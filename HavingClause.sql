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

select Department, count(EmployeeID) as Employee_Count from Employee 
group by Department having count(EmployeeID) > 0;

-- Filter total salary
select sum(salary) as Total_salary from Employee group by (select 1) having sum(salary) >= 200000;

-- Filter average salary
select Department, avg(salary) as averageSalary from Employee group by Department having avg(salary) > 250000;

-- Filter Maximum Salary
select max(salary) as Max_salary from Employee having max(salary) > 70000;

-- Filter minimum salary
select min(salary) as Min_salary from Employee having min(salary) <300000;

-- Multiple conditions
select sum(salary) as Total_salary, avg(salary) as Average_Salary from Employee having sum(salary) >= 200000 and avg(salary) > 400000;
 