-- Day 02: The SELECT Statement (Column Projection & Wildcards)
-- Watch Video Tutorial: [https://www.instagram.com/reel/DeLuty5Nort/?stkn=MWc5YWQ3NjVteG04Yw==]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Basic Data Retrieval - Column Projection & SELECT *
=====================================================
*/

-- ---------------------------------------------------
-- 1. Setup Sample Data
-- ---------------------------------------------------
-- Assuming the 'Customers' table exists with columns: ID, Name, City
-- Example schema recreation for reference:

CREATE TABLE IF NOT EXISTS Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

-- Insert sample records
INSERT INTO Customers (ID, Name, City)
VALUES 
(1, 'Ali', 'Lahore'),
(2, 'Ahmed', 'Karachi'),
(3, 'Sara', 'Islamabad');


-- ---------------------------------------------------
-- 2. Querying Specific Columns (Column Projection)
-- ---------------------------------------------------
-- Fetching only required fields (Name and City) to reduce data overload:

SELECT Name, City 
FROM Customers;


-- ---------------------------------------------------
-- 3. Querying All Columns (Wildcard *)
-- ---------------------------------------------------
-- Using asterisk (*) to fetch every available column from the table:

SELECT * 
FROM Customers;


-- ==========================================
-- Key Takeaways:
-- - SELECT Clause: Specifies which attributes/columns to retrieve.
-- - FROM Clause: Specifies the target table name.
-- - Column Projection: Selecting specific columns improves query execution efficiency.
-- - Wildcard (*): Fetches all available columns in the specified table.
-- ==========================================
