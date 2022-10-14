-- Create employees duplicate table --
DROP TABLE IF EXISTS employees_dup;

CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);
-- duplicating the structure of the employees table --
INSERT INTO employees_dup
SELECT e.* 
FROM employees e 
LIMIT 20;

-- To view result--
SELECT 
    *
FROM
    employees_dup;

-- creating a duplicate of a row --
INSERT INTO employees_dup VALUES ('10001', '1953-09-02', 'Georgi', 'Facello', 'M', '1986-06-26');

/* to unify tables use UNION ALL- SET columns that do not appear in the respective tables as null*/

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;

/* the difference b/w Union all and union is that union displays only distict values in the output but union all displays all values and their duplicates*/

SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m
;

SELECT 
    *
FROM
    (SELECT 
        e.emp_no,
            e.first_name,
            e.last_name,
            NULL AS dept_no,
            NULL AS from_date
    FROM
        employees e
    WHERE
        last_name = 'Denis' UNION SELECT 
        NULL AS emp_no,
            NULL AS first_name,
            NULL AS last_name,
            dm.dept_no,
            dm.from_date
    FROM
        dept_manager dm) AS a
ORDER BY - a.emp_no DESC;

/* ORDER BY -a.emp_no DESC;. Using this code, you will first order the employees from the lowest to the highest number, and then leave the null*/