--DML
USE shop_practice;
--Show everyone's salary
SELECT salesperson_name, salary FROM Salesperson;

--Show everyone's salary but remove duplicates
SELECT DISTINCT salary FROM Salesperson;

--show names of people under 30 percent quota 
SELECT salesperson_name
FROM Salesperson
WHERE percentage_of_quota > 30;

--Show the names of all salespeople who earn more than $49,999 and less than $100,000.
SELECT salesperson_name 
FROM Salesperson
WHERE salary BETWEEN 49999 AND 100000;

--Show the names of all salespeople with PercentOfQuota greater than 49 and less than 60. Use the BETWEEN keyword.
SELECT salesperson_name 
FROM Salesperson
WHERE percentage_of_quota BETWEEN 49 AND 60;
--Show the names of all salespeople with PercentofQuota greater than 49 and less than 60. Use the LIKE keyword.
SELECT salesperson_name 
FROM Salesperson
WHERE percentage_of_quota LIKE '5_';



--Show the names of all salespeople who have an order with Abernathy Construction
SELECT  sp.salesperson_name
FROM SalesOrder AS so
LEFT JOIN Salesperson AS sp 
ON so.salesperson_id = sp.salesperson_id
LEFT JOIN Customer AS cst
ON (so.salesperson_id = sp.salesperson_id AND so.customer_id = cst.customer_id)
WHERE cst.customer_name = "Abernathy Construction"


--Show the names and salary of all salespeople who do not have an order with Abernathy Construction, in ascending order of salary
SELECT sp.salesperson_name, sp.salary, cst.customer_name
FROM SalesOrder AS so
LEFT JOIN Salesperson AS sp
ON so.salesperson_id = sp.salesperson_id
LEFT JOIN Customer AS cst
ON (so.salesperson_id = sp.salesperson_id  AND so.customer_id = cst.customer_id )
WHERE cst.customer_name != "Abernathy Construction" ;

--Show the names of customers who are located in a City ending with S.
SELECT customer_name FROM Customer
WHERE city LIKE '%s';



