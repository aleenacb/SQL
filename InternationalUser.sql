DROP database International_user;

create database International_user;
use International_user;

CREATE TABLE International_user(
    UserId INT PRIMARY KEY,
    fullName VARCHAR(100),
    lastName CHAR(50)
);