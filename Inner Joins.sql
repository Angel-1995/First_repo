/*using inner joins */
USE employees;
SELECT 
    *
FROM
    dept_manager_dup
    ORDER BY dept_no;
    
/* to extract data from 2 tables---- extracting from departments_dup & dept_manager_dup (use the value that appears in both tables)*/

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

/*NB: non-matching values are not displayed in Inner join */

/*Assignment 1*/

SELECT 
    *
FROM
    employees;

SELECT 
    *
FROM
    dept_emp
ORDER BY dept_no;

SELECT 
    *
FROM
    dept_manager
ORDER BY dept_no;
    
SELECT 
    d.emp_no, m.dept_no, d.hire_date, d.first_name, d.last_name
FROM
    dept_manager m
        INNER JOIN
    employees d ON m.emp_no = d.emp_no
ORDER BY m.emp_no;

/* OR */

SELECT 
    e.emp_no, e.first_name, e.last_name, dm.dept_no, e.hire_date
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no;

/* to remove duplicate records */
/* data does not have duplicates, so we decided to add rows to create duplicates */

INSERT INTO dept_manager_dup
Values ('110228', 'd003', '1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES ('d009', 'customer service');

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

/* to check result */

SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
ORDER BY m.dept_no;

/* to remove duplicates-Use Group By and the field that differs the most in your records */
SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;



