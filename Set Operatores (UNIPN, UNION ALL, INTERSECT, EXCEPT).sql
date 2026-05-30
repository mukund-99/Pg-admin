DROP TABLE IF EXISTS student_2025;
DROP TABLE IF EXISTS student_2026;

CREATE TABLE student_2025(
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
course VARCHAR(100)
);

INSERT INTO student_2025(student_id, student_name, course)
VALUES (1, 'Arav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechamical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');

SELECT * FROM student_2025;

CREATE TABLE student_2026(
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
course VARCHAR(100)
);

INSERT INTO student_2026(student_id, student_name, course)
VALUES(3, 'Kabir Patel', 'Electronics'),  --same as student_2025
(4, 'Ananya Desai', 'Civil Engineering'), --sa,e as student_2025
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');

SELECT * FROM student_2026;

-- Show Combine result of both table data with remove duplicate records
SELECT * FROM student_2025
UNION 
SELECT * FROM student_2026;

-- Show combine result and keep duplicates records
SELECT * FROM student_2025
UNION ALL
SELECT * FROM student_2026;

-- Returns the common result in both table
SELECT * FROM student_2025
INTERSECT
SELECT * FROM student_2026;

-- Return result which is records not found in sec tbl (EXCEP SHOW RECORDS IN ONLY FIRST TABLE)
SELECT * FROM student_2025
EXCEPT
SELECT * FROM student_2026;