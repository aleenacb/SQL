drop database Student_truncate;
create database Student_truncate;
use Student_truncate;

create table Student_truncate (
Id int primary key,
Name varchar(50),
Marks int
);

truncate table Student_truncate;

select * from student_truncate;