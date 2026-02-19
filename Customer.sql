drop database Customer;
create database Customer;
use Customer;
create table Customer (
CustomerID int primary key,
FirstName varchar(50),
LastName varchar(50),
Country varchar(50),
Age int check(Age >= 0 and Age <= 99),
phone varchar(15)
);

INSERT INTO Customer(CustomerID, FirstName, LastName, Country, Age, phone)
VALUES
(1, 'Luca', 'Bianchi', 'Italy', 23, '8562232695'),
(2, 'Aike', 'Tanaka', 'Japan', 21, '3232323655'),
(3, 'Carlos', 'Gomez', 'France', 25, '8522227851'),
(4, 'Sofia', 'Muller', 'Germany', 22, '4521335287'),
(5, 'Ethan', 'Johnson', 'USA', 25, '7821213222');

CREATE TABLE subTable AS 
SELECT CustomerID, FirstName AS CustomerName 
FROM Customer;

/*DESC Customer;
SHOW CREATE TABLE Customer;*/

DESC Customer;

