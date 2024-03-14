-- Active: 1710405146965@@127.0.0.1@3306
USE shop_practice;

CREATE TABLE SalesOrder(
    order_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    customer_id INT,
    saleperson_id INT,
    Foreign Key (customer_id) REFERENCES Customer(customer_id),
    Foreign Key (saleperson_id) REFERENCES Salesperson (salesperson_id)
);

ALTER TABLE SalesOrder
ADD amount INT NOT NULL;

ALTER TABLE SalesOrder
CHANGE saleperson_id salesperson_id INT;

INSERT INTO SalesOrder(customer_id, salesperson_id, amount) 
VALUES 
    (1, 5, 560),
    (1, 3, 1800),
    (2, 1, 480),
    (4, 1, 2500),
    (1, 4, 6000),
    (3, 1, 700),
    (2, 3, 150);

SELECT * FROM SalesOrder;

