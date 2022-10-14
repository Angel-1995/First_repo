/* Takes all the values from a certain table and connects it to all the values in the tables we want to join it with ----It connects all values not only those that match like in the case of Inner join*/
/* used when the tables in the database are not well connected */

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

/*Using old syntax*/
SELECT 
    dm.*, d.*
FROM
    dept_manager dm, departments d
ORDER BY dm.emp_no , d.dept_no;

/* to display only departments that the manager manages but not a part of */
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
    dm.dept_no <> d.dept_no
ORDER BY dm.emp_no , d.dept_no;

/* Assignment 1- Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9 */
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
  d.dept_no = 'd009'
ORDER BY d.dept_no;

/* Assignment 2- Return a list with the first 10 employees with all the departments they can be assigned to */
SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no < 10011
ORDER BY e.emp_no , d.dept_name;

/* Aggregate Functions and Join */
/* Find average salaries of Men and Women in the company */

SELECT 
    e.gender, AVG(s.salary) AS Average_Salary
FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

/* Joining more than 2 tables */
SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    dm.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
        JOIN
    departments d ON d.dept_no = dm.dept_no
ORDER BY first_name;

/* Assignment 4- Select all managers’ first and last name, hire date, job title, start date, and department name.*/

SELECT 
    e.first_name,
    e.last_name,
    e.hire_date,
    t.title,
    m.from_date,
    d.dept_name
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
        JOIN
    departments d ON m.dept_no = d.dept_no
        JOIN
    titles t ON e.emp_no = t.emp_no
WHERE
    t.title = 'Manager'
ORDER BY e.emp_no;

/* Average salaries paid by department---must use group by so that it won't return only the first department */
SELECT 
    d.dept_name, AVG(salary) AS Average_salary
FROM
    departments d
        JOIN
    dept_manager m ON d.dept_no = m.dept_no
        JOIN
    salaries s ON m.emp_no = s.emp_no
GROUP BY d.dept_name
HAVING Average_salary > 60000
ORDER BY Average_salary DESC;

/*How many male and how many female managers do we have in the ‘employees’ database? */
SELECT 
    e.gender, COUNT(m.emp_no) AS Total_number
FROM
    employees e
        JOIN
    dept_manager m ON e.emp_no = m.emp_no
    WHERE gender = 'F';   