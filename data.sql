-- data.sql
USE customers_analysis;

INSERT INTO Customers VALUES 
(1, 'Rahul Mehta', 28, 'Delhi', 'Male'),
(2, 'Priya Sharma', 32, 'Mumbai', 'Female'),
(3, 'Amit Kumar', 24, 'Bangalore', 'Male'),
(4, 'Sneha Gupta', 29, 'Delhi', 'Female');

INSERT INTO Purchases VALUES
(101, 1, 'Laptop', 55000, '2025-09-01'),
(102, 1, 'Headphones', 3000, '2025-09-10'),
(103, 2, 'Mobile', 25000, '2025-09-15'),
(104, 3, 'Tablet', 15000, '2025-09-20'),
(105, 4, 'Laptop', 60000, '2025-09-25');
