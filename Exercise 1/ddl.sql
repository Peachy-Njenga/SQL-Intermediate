--DATA DEFINITION LANGUAGE
USE shop_practice;
-- Show a SQL statement to insert a new row into CUSTOMER
INSERT INTO Customer (customer_name, city, industry_type)
VALUES ("Cornerstone Construction", "London", "F")

SELECT * FROM Customer;

-- Show a SQL statement to insert a new name and birth year into SALESPERSON; assume that salary is not determined.
ALTER TABLE Salesperson
MODIFY COLUMN percentage_of_quota INT NULL
MODIFY COLUMN salary INT NULL;

INSERT INTO Salesperson (salesperson_name, year_of_birth)
VALUES ("Isabel", 2001);

SELECT * FROM Salesperson;

-- Show a SQL statement to insert rows into a new table, HIGH-ACHIEVER (Name, Salary) in which, to be included, a salesperson must have a salary of at least 100,000.
CREATE Table HighAchiever(
    high_achiever_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    high_achiever_name VARCHAR(50) NOT NULL,
    salary INT NULL CHECK (salary >= 100000)
);

-- Show a SQL statement to delete customer ABERNATHY CONSTRUCTION.

-- Show a SQL statement to delete all orders for ABERNATHY CONSTRUCTION.
DELETE so FROM SalesOrder as so    
LEFT JOIN Customer as cst
ON so.customer_id = cst.customer_id
WHERE cst.customer_name = "Abernathy Construction";

SELECT * FROM SalesOrder;

-- Show a SQL statement to change the salary of salesperson JONES to 45,000.
UPDATE Salesperson
SET salary = 45000
WHERE salesperson_name = "Jones";

-- Show a SQL statement to give all salespeople a 10 percent pay increase.
UPDATE Salesperson
Set salary = salary * 1.1;


-- Assume that salesperson JONES changes his name to PARKS. Show the SQL statements that make the appropriate changes
UPDATE Salesperson
Set salesperson_name = "Parks"
WHERE salesperson_name = "Jones";

SELECT * FROM Salesperson;
