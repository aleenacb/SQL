/*Date and DateTime*/

create database Orders;
use Orders;

CREATE TABLE Orders(
OrderId INT PRIMARY KEY,
OrderDate DATE,
OrderTime TIME,
ShippedAT DATETIME
);