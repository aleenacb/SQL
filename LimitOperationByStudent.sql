DROP DATABASE student;
CREATE DATABASE student;
USE student;

CREATE TABLE student (
    student_Id VARCHAR(100) PRIMARY KEY,
    First_name VARCHAR(100),
    College VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    StudSubject VARCHAR(25) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL
);
INSERT INTO student(student_id, First_name, College, department,StudSubject, age, salary) VALUES
(1, "Alice", 'Mite', "Sales", "Science",19, 800000),
(2, "Bob", "AJ", "Marketing", "Electronics",20, 500000),
(4, "Charlie", "Mite", "Sales", "DSA",25, 789456),
(5, "David", "AJ", "Sales", "MicroController",15, 89456),
(6, "Eve", "Sahyadri", "Sales", "IOT",35, 94561),
(7, "Frank", "St.Joseph", "Sales", "DSA",30, 45689),
(8, "Grance", "Mit", "Sales", "CN",29, 635241),
(9, "Hannah", "Mit", "Sales", "CC",20, 457891),
(10, "Alvya", "Mite", "Sales", "IPR",35, 600000);

select * from student order by age limit 2;

select * from student order by age limit 3, 1;

select * from student order by age desc limit 3 offset 2;

select * from student order by age desc limit 3;