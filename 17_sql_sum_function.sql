-- Day 17: SQL SUM() Function & Categorical Aggregations
-- Watch Video Tutorial: [https://www.instagram.com/reel/De6SblCt_AL/?vrfl=MWNjOW41ODhzYXoydA==]
-- Author: Waqas Manzoor

/*
=====================================================
Topic: SQL SUM() Aggregate Function & Categorical Breakdown
=====================================================
*/

-- ---------------------------------------------------
-- 1. Total Quantity Sum (Entire Table)
-- ---------------------------------------------------
-- Calculate the total quantity of items sold across all orders
SELECT SUM(Quantity) AS TotalQuantity
FROM OrderDetails;

-- ---------------------------------------------------
-- 2. Order-wise Quantity Sum (GROUP BY)
-- ---------------------------------------------------
-- Calculate the total quantity of items sold per individual order
SELECT OrderID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY OrderID;

-- ---------------------------------------------------
-- 3. Advanced Filtering on Sums (HAVING Clause)
-- ---------------------------------------------------
-- Filter orders where the total item quantity exceeds a specific baseline
SELECT OrderID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY OrderID
HAVING SUM(Quantity) > 10;

/*
=====================================================
Key Takeaways:
- SUM() adds up all numeric values in a specified column, ignoring NULLs.
- Use ALIASING (AS) to assign a clear, business-ready header name to the output column.
- Combine SUM() with GROUP BY to calculate total metrics per group or segment.
=====================================================
*/
