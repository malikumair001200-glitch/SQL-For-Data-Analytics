-- Day 11: The UPDATE Statement (Modifying Existing Records & The WHERE Risk)
-- Watch Video Tutorial: [https://www.instagram.com/reel/DejgzNoN5k0/?psln=ZnY1enFrY3BveGVt]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Data Manipulation - UPDATE Statement & Condition Safety
=====================================================
*/

-- ---------------------------------------------------
-- 1. Setup Sample Table
-- ---------------------------------------------------
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert sample records
INSERT INTO Customers (CustomerName, City, Country)
VALUES 
('Alfreds Futterkiste', 'Berlin', 'Germany'),
('Ana Trujillo', 'Karachi', 'Pakistan'),
('Antonio Moreno', 'Mexico D.F.', 'Mexico');


-- ---------------------------------------------------
-- 2. Safe UPDATE Operation (Using WHERE Clause)
-- ---------------------------------------------------
-- Always specify a WHERE clause to update specific rows:

UPDATE Customers
SET City = 'Lahore'
WHERE CustomerID = 1;


-- ---------------------------------------------------
-- 3. The Unrestricted UPDATE Risk (WITHOUT WHERE Clause)
-- ---------------------------------------------------
-- WARNING: Omitting the WHERE clause overwrites every row in the table!
-- Uncomment to test in a sandbox environment only:

-- UPDATE Customers
-- SET City = 'Lahore';


-- ---------------------------------------------------
-- 4. Verify Updated Data
-- ---------------------------------------------------
SELECT * FROM Customers;


-- ==========================================
-- Key Takeaways:
-- - UPDATE Statement: Data Manipulation Language (DML) command used to modify existing table records.
-- - SET Clause: Defines the column(s) and new value(s) to apply.
-- - The WHERE Warning: Omitting WHERE updates ALL rows in the table across the specified column(s).
-- - Best Practice: Always test UPDATE queries using SELECT with the same WHERE clause first!
-- ==========================================
