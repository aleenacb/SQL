drop database employees;
create database employees;
use employees;

create table employees(
 id int primary key,
 empName varchar(50),
 department varchar(25)
 );
 insert into employees(id, empName, department) values
 (1, "Aleena", "CSE"),
 (2, "Alvya", "IS"),
 (3, "Ana", "IOT"),
 (4, "Charlie","CSE"),
 (5, "John", "IS");
 
 /*delete from employees 
 where id not in
 (select min(id) from employees
 group by EmpName, department
 );*/
 
 
 select EmpName, department, count(*) from employees group by EmpName, department having count(*) > 0;
 SET SQL_SAFE_UPDATES = 0;
 with cte as (
select id, EmpName, department,row_number() over(partition by EmpName, department order by id) as rowNum from employees)
delete from employees
where id in (select id from cte where rowNum > 1);