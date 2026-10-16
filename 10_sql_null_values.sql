-- Day 10: Handling NULL Values (IS NULL and IS NOT NULL Operators)
-- Watch Video Tutorial: [https://www.instagram.com/reel/DeggAewtiqI/?vrfl=OHIwaTk0b3M4Z3Vx]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Data Quality & Missing Values - IS NULL / IS NOT NULL
=====================================================
*/

-- ---------------------------------------------------
-- 1. Setup Sample Table
-- ---------------------------------------------------
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(100),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);

-- Insert sample records (including NULL / missing values)
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES 
('Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
('Ana Trujillo', 'Ana Trujillo', NULL, 'México D.F.', '05021', 'Mexico'),
('Antonio Moreno', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', NULL, 'Mexico'),
('Around the Horn', 'Thomas Hardy', NULL, 'London', 'WA1 1DP', 'UK');


-- ---------------------------------------------------
-- 2. Querying Missing Data using IS NULL
-- ---------------------------------------------------
-- Standard '=' comparison does not work for NULL values.
-- Use 'IS NULL' to extract records with missing data attributes:

SELECT CustomerName, Address 
FROM Customers
WHERE Address IS NULL;


-- ---------------------------------------------------
-- 3. Querying Present Data using IS NOT NULL
-- ---------------------------------------------------
-- Use 'IS NOT NULL' to retrieve records where data is present and non-empty:

SELECT CustomerName, Address 
FROM Customers
WHERE Address IS NOT NULL;


-- ==========================================
-- Key Takeaways:
-- - NULL Concept: Represents missing, unknown, or unrecorded data (NOT equal to 0 or an empty string '').
-- - Comparison Operators: Cannot use = or != with NULL; must explicitly use IS NULL or IS NOT NULL.
-- - Data Cleaning: Fundamental for identifying incomplete records during data audits and cleaning pipelines.
-- ==========================================
