-- Day 08: The Logical NOT Operator (Exclusion Data Filtering)
-- Watch Video Tutorial: [https://www.instagram.com/reel/DebVu5PtWOw/?cplk=MTBvbWh0ZXVweHFscw==]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Conditional Filtering - Logical NOT Operator
=====================================================
*/

-- ---------------------------------------------------
-- 1. Setup Sample Table
-- ---------------------------------------------------
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert sample records
INSERT INTO Customers (CustomerID, CustomerName, City, Country)
VALUES 
(1, 'Ana Trujillo Emparedados y helados', 'México D.F.', 'Mexico'),
(2, 'Antonio Moreno Taquería', 'México D.F.', 'Mexico'),
(3, 'Pedro Afonso', 'São Paulo', 'Brazil'),
(4, 'Martin Sommer', 'Madrid', 'Spain'),
(5, 'Maria Anders', 'Berlin', 'Germany');


-- ---------------------------------------------------
-- 2. Querying with Logical NOT Operator
-- ---------------------------------------------------
-- Reverses the evaluation condition to exclude specific records (e.g., exclude Spain):

SELECT * FROM Customers
WHERE NOT Country = 'Spain';


-- ==========================================
-- Key Takeaways:
-- - Logical NOT Operator: Negates or reverses a boolean expression in a WHERE clause.
-- - Exclusion Filtering: Returns all records EXCEPT those matching the specified criteria.
-- - Alternative Syntax: Equivalent to using inequality operators like Country != 'Spain' or Country <> 'Spain'.
-- - Usage with Other Operators: Commonly combined with LIKE, IN, BETWEEN, and NULL checks (e.g., NOT IN, IS NOT NULL).
-- ==========================================
