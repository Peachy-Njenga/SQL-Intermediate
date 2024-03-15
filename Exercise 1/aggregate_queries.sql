--AGGREGATE QUERIES.
USE shop_practice;
-- Compute the number of orders.
SELECT COUNT(*) FROM SalesOrder;

-- Compute the number of different customers who have an order.
SELECT COUNT(DISTINCT customer_id)
FROM SalesOrder;

-- Compute the number of orders for each salesperson.
SELECT sp.salesperson_name, COUNT(*) AS num_of_orders
FROM SalesOrder AS so
INNER JOIN Salesperson as sp
ON so.salesperson_id = sp.salesperson_id
GROUP BY so.salesperson_id;


-- Compute the number of orders for each salesperson, considering only orders for an amount exceeding 500
SELECT sp.salesperson_name, COUNT(*) AS num_of_orders
FROM SalesOrder AS so
INNER JOIN Salesperson as sp
ON so.salesperson_id = sp.salesperson_id
WHERE so.amount >= 500
GROUP BY so.salesperson_id

--Compute the average percent of quota for salespeople.
SELECT AVG(percentage_of_quota) as "Average quota"
FROM Salesperson

--Show the name of the salesperson with highest percent of quota.
SELECT MAX(percentage_of_quota)
FROM Salesperson
