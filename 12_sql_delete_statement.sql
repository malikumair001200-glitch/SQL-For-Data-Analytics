-- Day 12: The DELETE Statement (Removing Records & The WHERE Risk)
-- Watch Video Tutorial: [https://www.instagram.com/reel/DemAsoAtySU/?srtk=MTNncXQxMHR5b2tnNQ==]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Data Manipulation - DELETE Statement vs DROP TABLE
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
('Ana Trujillo', 'México D.F.', 'Mexico'),
('Antonio Moreno', 'México D.F.', 'Mexico');


-- ---------------------------------------------------
-- 2. Safe Targeted DELETE (Using WHERE Clause)
-- ---------------------------------------------------
-- Always specify a WHERE clause to remove specific rows only:

DELETE FROM Customers
WHERE CustomerID = 1;


-- ---------------------------------------------------
-- 3. The Unrestricted DELETE Risk (WITHOUT WHERE Clause)
-- ---------------------------------------------------
-- WARNING: Omitting WHERE deletes ALL rows, but preserves table schema!
-- Uncomment to test in a sandbox environment only:

-- DELETE FROM Customers;


-- ---------------------------------------------------
-- 4. Complete Schema Removal (DROP TABLE)
-- ---------------------------------------------------
-- WARNING: DROP TABLE permanently removes both table structure AND data!
-- Uncomment to test in a sandbox environment only:

-- DROP TABLE Customers;


-- ==========================================
-- Key Takeaways:
-- - DELETE Statement: Data Manipulation Language (DML) command to delete rows.
-- - The WHERE Clause: Restricts deletion to matching records (e.g., CustomerID = 1).
-- - Unrestricted DELETE: Deletes all table records while preserving table structure/schema.
-- - DROP TABLE: Data Definition Language (DDL) command that completely removes the table schema from the database.
-- ==========================================
