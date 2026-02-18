CREATE DATABASE student;
USE student;

CREATE TABLE student (
    student_Id VARCHAR(100) PRIMARY KEY,
    First_name VARCHAR(100),
    Last_name VARCHAR(100) NOT NULL,
    College VARCHAR(100) NOT NULL,
    Class VARCHAR(10) NOT NULL,
    Date_of_birth DATE NOT NULL,
    Contact_details BIGINT NOT NULL
);
