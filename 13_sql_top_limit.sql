-- Day 13: SQL TOP / LIMIT - Restricting Query Results
-- Watch Video Tutorial: [https://www.instagram.com/reel/DeoE8t9tlEb/?mdxt=eWJpYzd5dmpoaXZ2]
-- Author: Waqas Manzoor

/*
=====================================================
Topic: Restricting Query Output using TOP and LIMIT
=====================================================
*/

-- ---------------------------------------------------
-- 1. SQL Server / MS Access Syntax (TOP)
-- ---------------------------------------------------
-- In SQL Server, the TOP clause is placed directly after SELECT
SELECT TOP 3 *
FROM Customers;

-- ---------------------------------------------------
-- 2. MySQL / PostgreSQL / SQLite Syntax (LIMIT)
-- ---------------------------------------------------
-- In MySQL, PostgreSQL, and SQLite, LIMIT is appended at the end of the query
SELECT *
FROM Customers
LIMIT 3;

-- ---------------------------------------------------
-- 3. Fetching Top Records with Sorting (ORDER BY)
-- ---------------------------------------------------
-- To retrieve true Top-N metrics (e.g., Highest Sales),
-- always combine ORDER BY with TOP or LIMIT.

-- SQL Server Syntax for Highest Sales:
SELECT TOP 3 CustomerID, CustomerName, TotalPurchases
FROM Customers
ORDER BY TotalPurchases DESC;

-- MySQL / PostgreSQL / SQLite Syntax for Highest Sales:
SELECT CustomerID, CustomerName, TotalPurchases
FROM Customers
ORDER BY TotalPurchases DESC
LIMIT 3;

/*
=====================================================
Key Takeaways:
- TOP is used in SQL Server / MS Access (placed right after SELECT).
- LIMIT is used in MySQL, PostgreSQL, and SQLite (placed at the end).
- Always pair TOP/LIMIT with ORDER BY to fetch meaningful sorted results!
=====================================================
*/
