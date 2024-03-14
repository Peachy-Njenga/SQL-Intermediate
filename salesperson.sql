USE shop_practice;

--Create table
CREATE TABLE Salesperson(
    salesperson_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    salesperson_name VARCHAR(50) NOT NULL,
    year_of_birth YEAR,
    percentage_of_quota INT NOT NULL,
    salary INT NOT NULL
    ); 

--populate table 
INSERT INTO Salesperson(salesperson_name, year_of_birth, percentage_of_quota, salary)
VALUES 
    ("Abel", 1990, 63, 120000),
    ("Baker", 1988, 38, 42000),
    ("Jones", 1995, 26, 36000),
    ("Muphy", 1992, 42, 50000),
    ("Zenith", 1999, 59, 118000),
    ("Kobad", 2000, 27, 36000);

