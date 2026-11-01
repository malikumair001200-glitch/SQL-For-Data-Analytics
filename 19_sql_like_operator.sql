-- Day 19: SQL LIKE Operator & Wildcard Pattern Matching
-- Watch Video Tutorial: [Video Publish Hone Ke Baad Yahan Link Paste Karein]
-- Author: Waqas Manzoor

/*
=====================================================
Topic: SQL LIKE Operator & Wildcards (% and _)
=====================================================
*/

-- ---------------------------------------------------
-- 1. Starts With Specific Character ('a%')
-- ---------------------------------------------------
-- Search for all customers whose name starts with the letter 'A'
-- The '%' wildcard represents zero, one, or multiple characters.
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a%';

-- ---------------------------------------------------
-- 2. Ends With Specific Character ('%a')
-- ---------------------------------------------------
-- Search for all customers whose name ends with the letter 'A'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%a';

-- ---------------------------------------------------
-- 3. Contains Specific Pattern ('%or%')
-- ---------------------------------------------------
-- Search for all customers whose name contains 'or' in any position
SELECT *
FROM Customers
WHERE CustomerName LIKE '%or%';

-- ---------------------------------------------------
-- 4. Single Character Wildcard ('_r%')
-- ---------------------------------------------------
-- Search for names where the second character is 'r'
-- The '_' wildcard represents exactly ONE single character.
SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%';

-- ---------------------------------------------------
-- 5. Combining Wildcards ('a_%')
-- ---------------------------------------------------
-- Search for names starting with 'a' and at least 2 characters in length
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a_%';

/*
=====================================================
Key Takeaways:
- LIKE operator is used in WHERE clause to search for a specified pattern in a column.
- % wildcard: Represents zero, one, or multiple characters.
- _ wildcard: Represents a single, specific character position.
=====================================================
*/
