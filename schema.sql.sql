-- schema.sql
CREATE DATABASE IF NOT EXISTS customers_analysis;
USE customers_analysis;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(30),
    gender VARCHAR(10)
);

CREATE TABLE Purchases (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount DECIMAL(10,2),
    purchase_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
