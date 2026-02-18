drop database student;
create database student;
use student;
create table student(
ID int,
Name varchar(50),
Marks int
);

INSERT INTO student VALUES(1, "Amit", 40000),(2, "Neha", 50000),(3, "Ravi", 30000),(4, "Kiran", NULL);

/*Ex1: BETWEEN operator*/
select * from student
where marks between 60 and 90;

/*ex2 :IN opertor*/
select * from student
where Name in ("Amit", "Ravi");

/*ex3: LIKE operator*/
Select * from student s where exists(
select * from student 
where marks > 80
);