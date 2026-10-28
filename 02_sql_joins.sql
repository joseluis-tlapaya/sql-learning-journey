-- Exercise 02: SQL JOINs
-- Objective: Understand how different JOIN types work

-- Create tables
CREATE TABLE demo_join_employees (
    id INTEGER PRIMARY KEY,
    employee_name VARCHAR(50)
);

CREATE TABLE demo_join_departments (
    id INTEGER PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Insert employees
INSERT INTO demo_join_employees
VALUES
    (1, 'Ana'),
    (2, 'Luis'),
    (3, 'Maria');

-- Insert departments
INSERT INTO demo_join_departments
VALUES
    (1, 'Sales'),
    (2, 'HR'),
    (4, 'Finance');


-- 1. JOIN (or INNER JOIN)
-- Returns only matching records from both tables
SELECT *
FROM demo_join_employees JOIN demo_join_departments
ON demo_join_employees.id = demo_join_departments.id;


-- 2. LEFT JOIN
-- Returns all employees and their matching departments
SELECT *
FROM demo_join_employees LEFT JOIN demo_join_departments
ON demo_join_employees.id = demo_join_departments.id;


-- 3. RIGHT JOIN
-- Returns all departments and their matching employees
SELECT *
FROM demo_join_employees RIGHT JOIN demo_join_departments
ON demo_join_employees.id = demo_join_departments.id;


-- 4. FULL OUTER JOIN
-- Returns all records from both tables
SELECT *
FROM demo_join_employees FULL OUTER JOIN demo_join_departments
ON demo_join_employees.id = demo_join_departments.id;


-- 5. CROSS JOIN
-- Returns every possible combination. The result has 09 rows (3x3=9)
-- The product of 03 rows in the left table times 03 rows in the right table
-- There's no need to provide an ON clause
SELECT *
FROM demo_join_employees CROSS JOIN demo_join_departments
ORDER BY demo_join_employees.id, demo_join_departments.id;