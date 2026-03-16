drop database Student;
create database Student;
use Student;
create table Student(
StudId int,
StudName varchar(50),
Department varchar(50),
course varchar(32)
);

insert into Student(StudId, StudName, Department, course) values
(1, "Aleena", "CS", "React"),
(2, "Ashwin", "Marine", "Ship"),
(3, "Leena", "Teacher", "Science"),
(4, "Benoy", "Officer", "Estate");
SET SQL_SAFE_UPDATES = 0;
delete from Student where StudId = 4;
delete from Student where StudName = "Aleena";

select * from Student;


