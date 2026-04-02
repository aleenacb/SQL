with cte as (
select id, EmpName, department,row_number() over(partition by EmpName, department order by id) as rowNum from employees)
delete from employees
where id in (select id from cte where rowNum > 1);