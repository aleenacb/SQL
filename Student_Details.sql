DROP DATABASE student;
CREATE DATABASE student;
USE student;

CREATE TABLE student (
    student_Id VARCHAR(100) PRIMARY KEY,
    First_name VARCHAR(100),
    College VARCHAR(100) NOT NULL,
    department VARCHAR(50) NOT NULL,
    age INT NOT NULL
);
INSERT INTO student(student_id, First_name, College, department, age) VALUES
(1, "Alice", 'Mite', "Sales", 19),
(2, "Bob", "AJ", "Marketing", 20),
(4, "Charlie", "Mite", "Sales", 25),
(5, "David", "AJ", "Sales", 15),
(6, "Eve", "Sahyadri", "Sales", 35),
(7, "Frank", "St.Joseph", "Sales", 30),
(8, "Grance", "Mit", "Sales", 29),
(9, "Hannah", "Mit", "Sales", 20),
(10, "Alvya", "Mite", "Sales", 35);

SELECT * FROM student;

SELECT age, First_name FROM student;

/*Filtering results with where*/
SELECT First_name, age FROM student WHERE age >= 35;

/*Sorting results with order by*/
SELECT First_name, age FROM student ORDER BY age DESC;

/*Limiting results with limit clause*/
/*Descending order*/
SELECT First_name, age FROM student ORDER BY age DESC LIMIT 3;

/*Ascending order*/
SELECT First_name, age FROM student ORDER BY age ASC LIMIT 2;

/*Aggregating data with group by and aggregation functions*/
SELECT department, avg(age) as avg_age FROM student GROUP BY department;


