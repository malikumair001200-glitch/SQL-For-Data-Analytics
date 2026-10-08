-- Day 03: The SELECT DISTINCT Statement (Removing Duplicate Data)
-- Watch Video Tutorial: [Video Publish Hone Ke Baad Yahan Link Paste Karein]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Data Deduplication - SELECT DISTINCT Keyword
=====================================================
*/

-- ---------------------------------------------------
-- 1. Setup Sample Table
-- ---------------------------------------------------
CREATE TABLE IF NOT EXISTS Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert sample records containing duplicate country entries
INSERT INTO Customers (ID, Name, Country)
VALUES 
(1, 'Ali', 'Pakistan'),
(2, 'Ahmed', 'Pakistan'),
(3, 'Sara', 'India'),
(4, 'John', 'UK'),
(5, 'David', 'UK');


-- ---------------------------------------------------
-- 2. Querying Without DISTINCT (Returns Duplicates)
-- ---------------------------------------------------
-- Standard SELECT query returns every record, including repetitive values:

SELECT Country 
FROM Customers;


-- ---------------------------------------------------
-- 3. Querying With DISTINCT (Returns Only Unique Values)
-- ---------------------------------------------------
-- Adding DISTINCT filters out duplicate rows and returns a unique list:

SELECT DISTINCT Country 
FROM Customers;


-- ==========================================
-- Key Takeaways:
-- - Standard SELECT returns all matching rows, including redundant duplicate values.
-- - SELECT DISTINCT scans the specified column(s) and eliminates all duplicates.
-- - Crucial for identifying unique categories, regions, or entities in a dataset.
-- ==========================================
