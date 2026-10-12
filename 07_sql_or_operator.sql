-- Day 07: The Logical OR Operator (Inclusive Multi-Condition Filtering)
-- Watch Video Tutorial: [Video Publish Hone Ke Baad Yahan Link Paste Karein]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Conditional Filtering - Logical OR Operator
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
-- 2. Querying with Logical OR Operator
-- ---------------------------------------------------
-- Returns records if AT LEAST ONE of the conditions evaluates to TRUE:

SELECT * FROM Customers
WHERE Country = 'Germany'
OR Country = 'Spain';


-- ==========================================
-- Key Takeaways:
-- - Logical OR Operator: Combines multiple conditions where ANY single TRUE evaluation includes the row.
-- - Flexibility: Unlike AND (where all conditions must be true), OR broadens the result set.
-- - Combining AND & OR: Use parentheses `()` when mixing AND/OR to ensure correct evaluation order.
-- ==========================================
