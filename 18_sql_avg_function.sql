-- Day 18: SQL AVG() Function & Categorical Aggregations
-- Watch Video Tutorial: [https://www.instagram.com/reel/DfArRIbNNJD/?obrf=MWhyeGExN24wMGV5NA==]
-- Author: Waqas Manzoor

/*
=====================================================
Topic: SQL AVG() Aggregate Function & Categorical Breakdown
=====================================================
*/

-- ---------------------------------------------------
-- 1. Overall Average Value (Entire Table)
-- ---------------------------------------------------
-- Calculate the average price across all products in the Products table
SELECT AVG(Price) AS AveragePrice
FROM Products;

-- ---------------------------------------------------
-- 2. Category-wise Average Value (GROUP BY)
-- ---------------------------------------------------
-- Calculate the average product price for each category individually
SELECT CategoryID, AVG(Price) AS AveragePrice
FROM Products
GROUP BY CategoryID;

-- ---------------------------------------------------
-- 3. Advanced Filtering on Averages (HAVING Clause)
-- ---------------------------------------------------
-- Filter categories where the average product price exceeds a specific threshold
SELECT CategoryID, AVG(Price) AS AveragePrice
FROM Products
GROUP BY CategoryID
HAVING AVG(Price) > 50;

/*
=====================================================
Key Takeaways:
- AVG() calculates the arithmetic mean of a numeric column, ignoring NULL values.
- Use ALIASING (AS) to assign a clear, business-ready header name to the output column.
- Pair AVG() with GROUP BY to compute mean benchmarks across categories or segments.
=====================================================
*/
