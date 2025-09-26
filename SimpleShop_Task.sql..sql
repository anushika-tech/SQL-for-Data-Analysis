CREATE DATABASE IF NOT EXISTS SimpleShop;
USE SimpleShop;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO customers VALUES (1, 'Anushika', 'Delhi');
INSERT INTO customers VALUES (2, 'Akansha', 'Mumbai');
INSERT INTO customers VALUES (3, 'Riya', 'Bangalore');

INSERT INTO orders VALUES (1, '2023-09-01', 1, 250.00);
INSERT INTO orders VALUES (2, '2023-09-03', 1, 550.00);
INSERT INTO orders VALUES (3, '2023-09-07', 2, 300.00);
INSERT INTO orders VALUES (4, '2023-09-08', 3, 400.00);

SELECT * FROM simpleshop.customers;
SELECT * FROM orders;
SELECT customer_id, SUM(amount) FROM orders GROUP BY customer_id;
INSERT INTO customers VALUES (4, 'Riya', 'Chennai');
select * from customers;
UPDATE customers SET city = 'Hyderabad' WHERE customer_id = 4;
select * from customers;
