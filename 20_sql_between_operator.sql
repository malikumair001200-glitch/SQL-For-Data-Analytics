-- Day 20: SQL BETWEEN Operator & Range Filtering
-- Watch Video Tutorial: [https://www.instagram.com/reel/DfWt6eUN11l/?obrf=MXVpMHV6ajNsMGpydg==]
-- Author: Waqas Manzoor

/*
=====================================================
Topic: SQL BETWEEN Operator & Range Exclusion (NOT BETWEEN)
=====================================================
*/

-- ---------------------------------------------------
-- 1. Range Filtering using BETWEEN (Inclusive)
-- ---------------------------------------------------
-- Retrieve employees whose salary falls within the range of 50,000 and 100,000.
-- Note: BETWEEN is inclusive, meaning both 50,000 and 100,000 are included in the results.
SELECT *
FROM Employees
WHERE Salary BETWEEN 50000 AND 100000;

-- ---------------------------------------------------
-- 2. Range Exclusion using NOT BETWEEN
-- ---------------------------------------------------
-- Retrieve employees whose salary is OUTSIDE the range of 50,000 and 100,000.
SELECT *
FROM Employees
WHERE Salary NOT BETWEEN 50000 AND 100000;

-- ---------------------------------------------------
-- 3. Filtering Date Ranges with BETWEEN
-- ---------------------------------------------------
-- Fetch all orders placed between specific start and end dates
SELECT OrderID, OrderDate, CustomerID
FROM Orders
WHERE OrderDate BETWEEN '2023-01-01' AND '2023-12-31';

/*
=====================================================
Key Takeaways:
- BETWEEN syntax: WHERE column BETWEEN min_val AND max_val.
- Inclusive Property: Starting and ending boundary values are ALWAYS included in the output.
- Use NOT BETWEEN to exclude a specific numerical or date range.
=====================================================
*/
