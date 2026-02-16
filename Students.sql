DROP DATABASE Students;
CREATE DATABASE Students;
USE Students;
CREATE TABLE Students (
	ID INT,
    Name VARCHAR(50),
    Marks INT,
    Age INT
);

INSERT INTO Students VALUES(1, "Amit", 90, 20),(2, "Neha", 85, 18),(3, "Ravi", 75, 14);

/*Using comparison operators*/
SELECT * FROM Students WHERE Marks >= 80; 

/*Using Logical operators*/
SELECT * FROM Students WHERE MARKS >= 75 AND Age >= 18;/*AND operator-> Bothe condition should be true*/

SELECT * FROM Students WHERE Marks >= 90 OR Age < 18; /*Either condition can be true*/

/*SELECT * FROM Students WHERE NOT Marks >= 70;/*Reverses the condition*/
