-- Day 14: SQL MIN() Function & Aggregations
-- Watch Video Tutorial: [https://www.instagram.com/reel/DerAZIstHGa/?rpxt=NjJibDVwZjBxcGxz]
-- Author: Waqas Manzoor

/*
=====================================================
Topic: SQL MIN() Aggregate Function & Categorical Aggregations
=====================================================
*/

-- ---------------------------------------------------
-- 1. Global Minimum Value (Entire Table)
-- ---------------------------------------------------
-- Retrieve the lowest price across all products in the table
SELECT MIN(Price) AS CheapestPrice
FROM Products;

-- ---------------------------------------------------
-- 2. Category-wise Minimum Value (GROUP BY)
-- ---------------------------------------------------
-- Retrieve the lowest product price for each product category individually
SELECT CategoryID, MIN(Price) AS CheapestPrice
FROM Products
GROUP BY CategoryID;

-- ---------------------------------------------------
-- 3. Advanced Filtering on Minimum Values (HAVING Clause)
-- ---------------------------------------------------
-- Filter categories where the minimum price is greater than a specific baseline
SELECT CategoryID, MIN(Price) AS CheapestPrice
FROM Products
GROUP BY CategoryID
HAVING MIN(Price) > 10;

/*
=====================================================
Key Takeaways:
- MIN() is an aggregate function that returns the lowest non-null value in a column.
- Use ALIASING (AS) to give aggregate results a clear, meaningful header name.
- Pair MIN() with GROUP BY to calculate minimum values per category or segment.
=====================================================
*/
