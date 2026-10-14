-- Day 09: The INSERT INTO Statement (Adding New Records)
-- Watch Video Tutorial: [https://www.instagram.com/reel/Ded0yJft_ly/?dlrf=MWx3MGNoZDQyemxwZw==]
-- Author: Waqas Manzoor
-- Series: SQL Zero to Hero for Data Analytics

/*
=====================================================
Topic: Data Manipulation - INSERT INTO Statement
=====================================================
*/

-- ---------------------------------------------------
-- 1. Setup Sample Table
-- ---------------------------------------------------
CREATE TABLE IF NOT EXISTS Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50)
);


-- ---------------------------------------------------
-- 2. Inserting a New Single Record
-- ---------------------------------------------------
-- Specify target columns explicitly followed by their corresponding values:

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');


-- ---------------------------------------------------
-- 3. Inserting Multiple Records in a Single Query
-- ---------------------------------------------------
-- You can add multiple rows at once by separating value tuples with commas:

INSERT INTO Customers (CustomerName, City, Country)
VALUES 
('Alfreds Futterkiste', 'Berlin', 'Germany'),
('Ana Trujillo Emparedados', 'México D.F.', 'Mexico');


-- ---------------------------------------------------
-- 4. Verify Inserted Data
-- ---------------------------------------------------
SELECT * FROM Customers;


-- ==========================================
-- Key Takeaways:
-- - INSERT INTO: Data Manipulation Language (DML) statement used to insert new records into a table.
-- - Column Matching: The order and data types of specified values must match target columns exactly.
-- - Bulk Insertion: Multiple tuples can be inserted simultaneously to optimize performance.
-- ==========================================
