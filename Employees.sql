/*Creating sample data*/
DROP DATABASE Employees;
CREATE DATABASE Employees;
USE Employees;
CREATE TABLE Employees (
	EmpID INT,
    EmpName VARCHAR(50),
    Salary INT,
    Bonus INT
);

/*Inserting sample data*/
INSERT INTO Employees(EmpID, EmpName, Salary, Bonus) VALUES(1, "Amit", 40000, 5000),(2, "Neha", 50000, 7000),(3, "Amiya", 60000, 3000);

/*Using arithmetic operators*/
SELECT 
EmpName, 
Salary, 
Bonus, 
Salary + Bonus AS Total_income, /*Addition*/
Salary - Bonus AS After_bonus_deduction,/*Substraction*/
Salary * 0.10 AS Ten_percent_salary,/*Multiplication*/
Salary / 12 AS Monthly_salary,/*Division*/
Salary % 10000 AS Salary_reminder /*Modulus*/ 
FROM Employees;
