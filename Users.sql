DROP DATABASE Users;
CREATE DATABASE Users;
USE Users;
CREATE TABLE Users (
UserId INT PRIMARY KEY,
UserName VARCHAR(50),
Permissions INT  
);
/*Insert sample data*/
INSERT INTO Users(UserId, UserName, Permissions) VALUES(1, "Amit", 1),(2, "Neha", 3),(3, "Ravi", 7);
ALTER TABLE Users 
ADD UNIQUE (UserName);

/*Ex1 :Check if user has write permission(AND)*/
SELECT * FROM Users WHERE Permissions & 2 = 2; /*2 = write permission*/

/*Ex2: Add execute permissiom*/
UPDATE Users 
SET Permissions = Permissions | 4 
WHERE UserId = 2;
/*Now neha has execute permission*/

/*ex3: Remove read operation*/
UPDATE Users 
SET Permissions = Permissions & ~1 
WHERE UserName = 'Ravi'; /*Remove read operations from Ravi*/

/*ex4: Toggle write operation*/
UPDATE Users
SET Permissions = Permissions ^ 2 
WHERE UserName = 'Amit';

/*ex5 ; Show permissions for all users*/
SELECT * FROM Users;