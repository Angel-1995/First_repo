/* to extract first 5 rows to see how table looks */

SELECT 
    *
FROM
    employees
LIMIT 5;

/* Using Insert to add data to an existing table*/

INSERT INTO employees (
emp_no,
birth_date,
first_name,
last_name,
gender,
hire_date
) VALUES
(
999901,
'1986-04-21',
'John',
'Smith',
'M',
'2011-01-01'
);

/* to check whether d code worked */
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 5;

/* Inserting data into a new table */

/* to see how the departments table looks */
SELECT 
    *
FROM
    departments
LIMIT 5;

/* A new table can be created and data inserted, also data table be inserted into a new table from an existing table */

/* Inserting data from the existing departments table into a duplicate departments table to be created */


CREATE TABLE departments_dup (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

INSERT INTO departments_dup
(
dept_no,
dept_name
)
SELECT 
    *
FROM
    departments;

/* to check if it worked */
SELECT 
    *
FROM
    departments_dup;

/* Exercise */
INSERT INTO departments 
VALUES (
'd010', 
'Business Analysis'
);

SELECT 
    *
FROM
    departments;
    
    
