-- Day 06: The Logical AND Operator (Combining Multiple Conditions)
-- Watch Video Tutorial: [https://www.instagram.com/reel/DeWLv5DtHVO/?dlrf=NDM1eXM1dTc1eDQ5]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Conditional Filtering - Logical AND Operator
=====================================================
*/

-- ---------------------------------------------------
-- 1. Setup Sample Table
-- ---------------------------------------------------
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);

-- Insert sample records
INSERT INTO Customers (CustomerID, CustomerName, City, Country)
VALUES 
(1, 'Ana Trujillo Emparedados y helados', 'México D.F.', 'Mexico'),
(2, 'Antonio Moreno Taquería', 'México D.F.', 'Mexico'),
(3, 'Centro comercial Moctezuma', 'México D.F.', 'Mexico'),
(4, 'Thomas Hardy', 'London', 'UK'),
(5, 'Christina Berglund', 'Luleå', 'Sweden');


-- ---------------------------------------------------
-- 2. Querying with Logical AND Operator
-- ---------------------------------------------------
-- Both conditions must evaluate to TRUE for a row to be returned:

SELECT * FROM Customers
WHERE Country = 'Mexico'
AND City = 'México D.F.';


-- ==========================================
-- Key Takeaways:
-- - Logical AND Operator: Used to combine two or more criteria in a WHERE clause.
-- - Strict Evaluation: Returns records only if ALL combined conditions evaluate to TRUE.
-- - Granular Subsetting: Allows precise multi-attribute filtering across complex tables.
-- ========================================== 
