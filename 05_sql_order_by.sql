-- Day 05: The ORDER BY Keyword (Sorting Query Results)
-- Watch Video Tutorial: [Video Publish Hone Ke Baad Yahan Link Paste Karein]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Data Sorting - ORDER BY Clause (ASC & DESC)
=====================================================
*/

-- ---------------------------------------------------
-- 1. Setup Sample Table
-- ---------------------------------------------------
CREATE TABLE IF NOT EXISTS Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert sample records
INSERT INTO Products (ProductID, ProductName, Price)
VALUES 
(1, 'Laptop', 1200.00),
(2, 'Mouse', 25.50),
(3, 'Keyboard', 45.00),
(4, 'Monitor', 300.00),
(5, 'Headphones', 80.00);


-- ---------------------------------------------------
-- 2. Sorting in Ascending Order (Default - Lowest to Highest)
-- ---------------------------------------------------
-- By default, ORDER BY sorts data in Ascending order (ASC):

SELECT * FROM Products
ORDER BY Price;


-- ---------------------------------------------------
-- 3. Sorting in Descending Order (Highest to Lowest)
-- ---------------------------------------------------
-- Adding the DESC keyword sorts data in Descending order:

SELECT * FROM Products
ORDER BY Price DESC;


-- ==========================================
-- Key Takeaways:
-- - ORDER BY Clause: Used to sort the result set of a query.
-- - Default Direction: Sorts in Ascending order (ASC) automatically if omitted.
-- - DESC Keyword: Explicitly specified to sort in Descending order (highest to lowest / Z to A).
-- - Multiple Columns: Can sort by multiple attributes (e.g., ORDER BY Category ASC, Price DESC).
-- ==========================================
