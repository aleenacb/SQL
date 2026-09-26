-- 1. books table
DROP DATABASE BooksTable;
CREATE DATABASE BooksTable;
USE BooksTable;
CREATE TABLE Books (
book_id INT PRIMARY KEY,
title VARCHAR(50),
genre VARCHAR(100),
price DECIMAL(6, 2),
stock INT
);

-- 2. Customers table
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
name VARCHAR(150),
city VARCHAR(100),
signup_date DATE
);

-- 3. Orders table
CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
book_id INT,
quantity INT,
order_date DATE,
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id),
FOREIGN KEY(book_id)
REFERENCES books(book_id)
);

-- 4. marketing_spend table
CREATE TABLE marketing_spend (
spend_id INT PRIMARY KEY,
customer_id INT,
spend_amount DECIMAL(7, 2),
FOREIGN KEY(customer_id)
REFERENCES customers(customer_id)
);
