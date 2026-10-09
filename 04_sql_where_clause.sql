-- Day 04: The WHERE Clause (Filtering Table Records)
-- Watch Video Tutorial: [Video Publish Hone Ke Baad Yahan Link Paste Karein]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Data Filtering - WHERE Clause Operations
=====================================================
*/

-- ---------------------------------------------------
-- 1. Setup Sample Table
-- ---------------------------------------------------
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert sample records
INSERT INTO Customers (CustomerID, CustomerName, City, Country)
VALUES 
(1, 'Ana Trujillo', 'Mexico D.F.', 'Mexico'),
(2, 'Antonio Moreno', 'Mexico D.F.', 'Mexico'),
(3, 'Thomas Hardy', 'London', 'UK'),
(4, 'Christina Berglund', 'Luleå', 'Sweden');


-- ---------------------------------------------------
-- 2. Querying with WHERE Clause (Conditional Filtering)
-- ---------------------------------------------------
-- Retrieving only records where the Country is specifically 'Mexico':

SELECT * FROM Customers
WHERE Country = 'Mexico';


-- ==========================================
-- Key Takeaways:
-- - WHERE Clause: Used to filter query results based on specified conditional criteria.
-- - Syntax Position: Always placed AFTER the FROM clause in a SELECT query.
-- - Text Values: String conditions require single quotes (e.g., Country = 'Mexico').
-- - Execution Flow: Only rows that evaluate to TRUE for the WHERE condition are returned.
-- ==========================================
