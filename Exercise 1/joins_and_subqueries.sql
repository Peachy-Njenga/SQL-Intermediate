-- JOINS AND SUBQUERIES
USE shop_practice;
-- Show the names and quota percentages of salespeople who have an order with ABERNATHY CONSTRUCTION, in descending order of quota percentage (use a subquery).

SELECT sp.salesperson_name, sp.percentage_of_quota
FROM Salesperson AS sp
WHERE sp.salesperson_id
IN (SELECT so.salesperson_id
FROM SalesOrder AS so
LEFT JOIN Customer AS cst 
ON so.customer_id = cst.customer_id
WHERE cst.customer_name = "Abernathy Construction")



-- Show the names and quota percentages of salespeople who have an order with ABERNATHY CONSTRUCTION, in descending order of quota percentage (use a join).
SELECT sp.salesperson_name, sp.salary 
FROM SalesOrder AS so
LEFT JOIN Salesperson AS sp
ON so.salesperson_id = sp.salesperson_id
LEFT JOIN Customer AS cst
ON (so.salesperson_id = sp.salesperson_id AND so.customer_id = cst.customer_id)
WHERE cst.customer_name = "Abernathy Construction"
ORDER BY sp.percentage_of_quota;


-- Show the quota percentages of salespeople who have an order with a customer in MEMPHIS (use a subquery).
SELECT sp.salesperson_name, sp.percentage_of_quota
FROM Salesperson AS sp
WHERE salesperson_id
IN (SELECT cst.customer_id
FROM SalesOrder as so
LEFT JOIN Customer as cst
ON so.customer_id = cst.customer_id
WHERE cst.city = "Memphis")

-- Show the quota percentages of salespeople who have an order with a customer in MEMPHIS (use a join).
SELECT sp.salesperson_name, sp.percentage_of_quota
FROM SalesOrder AS so
LEFT JOIN Salesperson AS sp
ON so.salesperson_id = sp.salesperson_id
LEFT JOIN Customer AS cst
ON (so.salesperson_id = sp.salesperson_id AND so.customer_id = cst.customer_id)
WHERE cst.city = "Memphis"




-- Show the industry type and names of the customers of all orders for companies in MEMPHIS.
SELECT cst.industry_type, cst.customer_name
FROM SalesOrder as so
LEFT JOIN Customer as cst 
ON so.customer_id = cst.customer_id
WHERE cst.city = "Memphis "




-- Show the names of salespeople along with the names of the customers who have ordered from them. Include salespeople who have had no orders.
SELECT sp.salesperson_name, COALESCE(cst.customer_name, 'No orders') AS customer_name
FROM Salesperson AS sp
LEFT JOIN SalesOrder as so
ON sp.salesperson_id = so.salesperson_id
LEFT JOIN Customer as cst
ON so.customer_id = cst.customer_id;

-- Show the names of salespeople who have two or more orders.
SELECT sp.salesperson_name
FROM SalesOrder as so
LEFT JOIN Salesperson AS sp
ON so.salesperson_id = sp.salesperson_id
GROUP BY sp.salesperson_name
HAVING COUNT(so.order_id ) >= 2;


-- Show the names and quota percentages of salespeople who have two or more orders.


-- Show the names and ages of salespeople who have an order with all customers.


--joins practice
SELECT  sp.salesperson_name, so.customer_id, so.amount
FROM SalesOrder AS so
LEFT JOIN Salesperson AS sp 
ON so.salesperson_id = sp.salesperson_id;

--more...
SELECT  sp.salesperson_name, so.customer_id, so.amount, cst.customer_name
FROM SalesOrder AS so
LEFT JOIN Salesperson AS sp 
ON so.salesperson_id = sp.salesperson_id
LEFT JOIN Customer AS cst
ON (so.salesperson_id = sp.salesperson_id AND so.customer_id = cst.customer_id)



--left join displays everything from th table from the left. If there's a relevant field in the joined table. it is pulled in. Otherwise, the parts will remain null. 
