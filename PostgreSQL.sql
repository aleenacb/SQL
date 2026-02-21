/*Postgre Sql*/
DROP DATABASE Employees;
CREATE DATABASE Employees;
USE Employees;
CREATE TABLE Employees (
	EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Depatment VARCHAR(50),
    Salary INT
);

INSERT INTO Employees(EmpID, EmpName, Salary) VALUES(1, "Amit", 40000),(2, "Neha", 50000),(3, "Amiya", 60000);
ALTER TABLE Employees RENAME TO Staff;

/*add CLAUSE*/
ALTER TABLE Staff
ADD Email VARCHAR(100);

ALTER TABLE Staff
MODIFY COLUMN Salary INT;

ALTER TABLE Staff
DROP COLUMN Salary;

ALTER TABLE Staff
RENAME TO Employees;