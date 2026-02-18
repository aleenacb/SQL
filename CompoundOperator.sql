/*Compound operator */

DROP DATABASE Employee;
CREATE DATABASE Employee;
USE Employee;
CREATE TABLE Employee(
Empid INT PRIMARY KEY,
EmpName VARCHAR(50),
Salary INT
);

INSERT INTO Employee VALUES(1, "Amit", 40000),(2, "Neha", 50000),(3, "Ravi", 30000);

/*Increase salary by 5000*/
UPDATE Employee
SET Salary = Salary + 5000
WHERE EmpName = "Neha";

/*Reduce salary by 2000*/
UPDATE Employee
SET Salary = Salary - 2000
WHERE EmpName = 'Ravi';

/*Double salary*/
UPDATE Employee
SET Salary = Salary * 2
WHERE EmpName = 'Amit';

/*Divide salry*/
UPDATE employee
SET Salary = Salary / 2
WHERE EmpName = 'Amit';

/*Modulus example*/
UPDATE Employee
SET Salary = Salary % 10000;
