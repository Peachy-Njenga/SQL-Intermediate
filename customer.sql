USE shop_practice

CREATE TABLE Customer(
    customer_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    customer_name VARCHAR(50) NOT NULL, 
    city VARCHAR(50) NOT NULL,
    industry_type VARCHAR(50) NOT NULL
);

INSERT INTO Customer(customer_name, city, industry_type)
VALUES
    ("Abernathy Construction", "Willow", "B"),
    ("Manchester Lumber", "Manchester", "F"),
    ("Tri-City Builders", "Memphis", "B"),
    ("Amalgamated Housing", "Memphis", "B");

SELECT * FROM Customer;


