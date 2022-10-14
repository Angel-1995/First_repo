/* to delete duplicate records */
DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dup
WHERE dept_no = 'd009';

/* add back initial rows because the code above deletes all duplicate and initial rows */

INSERT INTO dept_manager_dup
Values ('110228', 'd003', '1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES ('d009', 'customer service');

/* to check */
SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

/* to apply LEFT Join /Left Outer Join- It adds all the values in the left table and the matching values in the two tables */

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;

/* to switch tables and test */
SELECT 
    d.dept_no, m.emp_no, d.dept_name
FROM
    departments_dup d
        LEFT JOIN
    dept_manager_dup m ON m.dept_no = d.dept_no
ORDER BY d.dept_no;

/* To extract only departments with no names or null */
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        LEFT JOIN
    departments_dup d ON m.dept_no = d.dept_no
WHERE
    dept_name IS NULL
GROUP BY m.emp_no
ORDER BY m.dept_no;

/* Assignment */

SELECT 
    *
FROM
    employees;
    
SELECT 
    *
FROM
    dept_manager;
    
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    dm.dept_no,
    dm.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
WHERE
    e.last_name = 'Markovitch'
ORDER BY dm.dept_no DESC , e.emp_no;