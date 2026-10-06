-- Day 01: Introduction to SQL & Relational Databases
-- Watch Video Tutorial: [Video Publish Hone Ke Baad Yahan Link Paste Karein]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Database Fundamentals & Basic Querying (SELECT)
=====================================================
*/

-- ---------------------------------------------------
-- 1. Database & Table Concept (Relational Structure)
-- ---------------------------------------------------
-- A database stores data in structured tables composed of rows and columns.
-- Creating a sample 'Customers' table for demonstration:

CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    City VARCHAR(50)
);

-- ---------------------------------------------------
-- 2. Inserting Sample Records
-- ---------------------------------------------------
INSERT INTO Customers (ID, Name, City)
VALUES 
(1, 'Ali', 'Lahore'),
(2, 'Ahmed', 'Karachi'),
(3, 'Sara', 'Islamabad');


-- ---------------------------------------------------
-- 3. Querying Data using SELECT
-- ---------------------------------------------------
-- The SELECT statement is used to fetch data from a database table.
-- Using asterisk (*) fetches all columns from the 'Customers' table:

SELECT * FROM Customers;


-- ==========================================
-- Key Takeaways:
-- - Database: A structured place where data is stored systematically.
-- - Table: Organized data stored in rows (records) and columns (attributes).
-- - SQL (Structured Query Language): Language used to interact with databases.
-- - SELECT *: Retrieves all rows and columns from a specified table.
-- ==========================================
