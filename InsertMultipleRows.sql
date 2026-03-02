/*BEGIN TRANSACTION;*/
-- drop database employees;
create database employeeDetails;
use employeeDetails;
insert into employeeDetails(empID, empName, age, department) values(10, 'Jack', 29, 'HR');
insert into employeeDetails(empID, empName, age, department)values(11, 'Amelia', 20, 'finance');
commit;

insert into employeeDetails(EmpId, EmpName, age, department)values
(1, 'John', 30, 'Engineering'),
(2, 'Sarah', 20, 'HR');