-- Day 16: SQL COUNT() Function & Categorical Aggregations
-- Watch Video Tutorial: [https://www.instagram.com/reel/De1YPk8NORe/?rpxt=MTh4NWRvdXl5dHYxZw==]
-- Author: Waqas Manzoor

/*
=====================================================
Topic: SQL COUNT() Aggregate Function & Categorical Breakdown
=====================================================
*/

-- ---------------------------------------------------
-- 1. Total Rows Count (Entire Table)
-- ---------------------------------------------------
-- Count the total number of orders in the Orders table
SELECT COUNT(*) AS TotalOrders
FROM Orders;

-- ---------------------------------------------------
-- 2. Category-wise Products Count (GROUP BY)
-- ---------------------------------------------------
-- Count the total number of products in each category individually
SELECT CategoryID, COUNT(*) AS TotalProducts
FROM Products
GROUP BY CategoryID;

-- ---------------------------------------------------
-- 3. Advanced Filtering on Counts (HAVING Clause)
-- ---------------------------------------------------
-- Filter categories that contain more than 5 products
SELECT CategoryID, COUNT(*) AS TotalProducts
FROM Products
GROUP BY CategoryID
HAVING COUNT(*) > 5;

/*
=====================================================
Key Takeaways:
- COUNT(*) counts the total number of rows in a table, including duplicate values and NULLs.
- Use ALIASING (AS) to assign a meaningful header name to the output column.
- Combine COUNT() with GROUP BY to aggregate total records per category or segment.
=====================================================
*/
