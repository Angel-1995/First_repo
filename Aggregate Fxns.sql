/* COUNT */

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

SELECT 
    COUNT(salary)
FROM
    salaries;
    
SELECT 
    COUNT(from_date)
FROM
    salaries;
    
SELECT 
    COUNT(DISTINCT from_date) AS Number_of_distinct_dates
FROM
    salaries;

/* COUNT(*) returns the number of rows of the table, NULL values included */

/*SUM */

SELECT 
    SUM(salary) 
FROM
    salaries;
    
/* SUM(*) doesn't work but gives an error */

/* MAX & MIN */

SELECT 
    MAX(salary)
FROM
    salaries;

SELECT 
    MIN(salary)
FROM
    salaries;
    
/* AVG */

SELECT 
    AVG(salary)
FROM
    salaries;
    
SELECT 
    *
FROM
    salaries;

SELECT 
    AVG(salary)
FROM
    salaries
WHERE
    from_date > '1997-01-01';

/* ROUND */

SELECT 
    ROUND(AVG(salary))
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
/* including the number of decimal places u want */

SELECT 
    ROUND(AVG(salary), 2)
FROM
    salaries
WHERE
    from_date > '1997-01-01';
    
/* IFNULL & COALESCE*/
/* to create departments_dup table displayed in video*/
 
DROP TABLE IF EXISTS departments_dup;
 
 CREATE TABLE departments_dup (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)    NULL
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
    
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

INSERT INTO departments_dup 
VALUES (
'd010', 
'Business Analysis',
 NULL);
 
 
 ALTER TABLE departments_dup
 ADD COLUMN dept_manager varchar(55) NULL;
 
 INSERT INTO departments_dup 
VALUES (
'd011', 
 NULL,
 NULL);
 
 /*USING IF NULL : ONLY USED WITH 2 Arguments*/
 
 SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department_name_not provided') AS dept_name
FROM
    departments_dup;
    
/* COALESCE caters to 2 or more arguments */

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name,
            'N/A') AS dept_manager
FROM
    departments_dup
    ORDER BY dept_no ASC;
    

    