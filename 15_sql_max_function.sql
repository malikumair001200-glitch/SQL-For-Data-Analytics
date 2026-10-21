-- Day 15: SQL MAX() Function & Aggregations
-- Watch Video Tutorial: [https://www.instagram.com/reel/Dev62HnNvs9/?rpxt=MTRsOXpjbjJ4eHp1Yg==]
-- Author: Waqas Manzoor

/*
=====================================================
Topic: SQL MAX() Aggregate Function & Categorical Aggregations
=====================================================
*/

-- ---------------------------------------------------
-- 1. Global Maximum Value (Entire Table)
-- ---------------------------------------------------
-- Retrieve the highest price across all products in the table
SELECT MAX(Price) AS HighestPrice
FROM Products;

-- ---------------------------------------------------
-- 2. Category-wise Maximum Value (GROUP BY)
-- ---------------------------------------------------
-- Retrieve the highest product price for each product category individually
SELECT CategoryID, MAX(Price) AS HighestPrice
FROM Products
GROUP BY CategoryID;

-- ---------------------------------------------------
-- 3. Advanced Filtering on Maximum Values (HAVING Clause)
-- ---------------------------------------------------
-- Filter categories where the maximum price exceeds a specific threshold
SELECT CategoryID, MAX(Price) AS HighestPrice
FROM Products
GROUP BY CategoryID
HAVING MAX(Price) > 100;

/*
=====================================================
Key Takeaways:
- MAX() is an aggregate function that returns the highest non-null value in a column.
- Use ALIASING (AS) to assign a meaningful header name to the output column.
- Combine MAX() with GROUP BY to find maximum values across categories or customer segments.
=====================================================
*/
