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

with AvgSalaryCTE(averageValue) as (
	select avg(salary) from Employee)
    select EmployeeID, EmpName, salary from employee where salary > (select averageValue from AvgSalaryCTE);
    
with MinSalaryCTE(min_salary) as(select min(salary) from Employee)
select
e.EmployeeID,
e.EmpName,
e.salary
from Employee e where e.salary = (select min_salary from MinSalaryCTE);

with DepartmentAvg as (select Department, avg(salary) as AvgSalary from Employee
group by Department),
RankedEmployee as (select e.EmployeeID, e.EmpName, e.Department, e.salary, rank() over(partition by e.Department order by e.salary desc) as salaryRank from Employee e 
join DepartmentAvg d on e.Department = d.Department)
select * from RankedEmployee where salaryRank = 1;