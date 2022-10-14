/* to select only Select first and last names in employees table*/
Use employees;

SELECT
    first_name, last_name
FROM
    employees;
/*to select all data in employees table*/

SELECT 
    *
FROM
    employees;
    
SELECT 
    dept_no
FROM
    departments;
    
SELECT 
    *
FROM
    departments;
  /* to select only employees whose first name is elvis in the employees table*/
  
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';

/* to select all employees whose first name is Denis and is a male*/

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND gender = 'M';
    
 SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Kellie' AND gender = 'F';   

/* to select employees whose first names are denis or elvis */
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' OR first_name = 'Elvis';   
    
    /* to select employees whose first names are denis and elvis */
    /* single or double quotes must be added to the string to be retrieved*/
    
    SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Denis' AND first_name = 'Elvis';   
    
/* to select female employees whose first names are kellie or Aruna*/    
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND (first_name = 'Kellie'
        OR first_name = "Aruna");
   /* to retrieve employees whose first names are cathie, Mark and Nathan*/     
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
 
 /* to retrieve all employees whose first names are not Cathie, mark and nathan*/
 
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');
    
    /* to retrieve all employees whose first names start with Mar... e.g Mark, Mary etc */
    
/* always use the % sign after the first letters of the string to be retrieved*/

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');
 
 SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('ar%');

 /* to retrieve all employees whose first names end with ar... */
    
/* always use the % sign before the last letters of the string to be retrieved*/ 
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar');
 
  /* to retrieve all employees whose names consist of ar (consecutively)... e.g Mark, Mary, arif,parto etc */
    
/* always use the % sign after and before the letters of the string to be retrieved*/

 SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar%');
 
 /* to retrieve employees whose names start with Mar and have only one single character left*/
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');
    
    /* to retrieve employees whose names doesn't start with Mar*/
    
 SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('Mar%');
    
    
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
    
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000_');


SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mark_');
    
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Jack%');    
    

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');    
    
    /* to retrieve employees whose were employed between Jan 1, 1990 and Jan 1, 2000 NB: the data would contain the dates Jan 1, 1990 and Jan 1, 2000 */
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    
     /* to retrieve employees whose were not employed between Jan 1, 1990 and Jan 1, 2000 NB: the data would not contain the dates Jan 1, 1990 and Jan 1, 2000*/
SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01'; 
   
   
   SELECT
    *
FROM
    salaries;
    
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN '66000' AND '70000';
    
SELECT
    *
FROM
    employees
WHERE
    emp_no NOT BETWEEN '10004' AND '10012';

   
SELECT
    dept_name
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
    
    /* to retrieve employees whose first names are missing or null*/
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;

 /* to retrieve employees whose first names are not missing or null*/
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL;
    
SELECT 
    dept_name
FROM
    departments
WHERE
    dept_no IS NULL;
    
/* Other Comparison Operators */

/* To retrieve employee whose first name is not mark, use NOT IN, <> or !=*/

SELECT 
    *
FROM
    employees
WHERE
    first_name <> 'Mark';

/* to retrieve employees whose hire dates started from 2000-01-01*/

SELECT 
    *
FROM
    employees
WHERE
    hire_date >= '2000-01-01';

/* to retrieve employees whose hire dates started on or before 1995-01-01*/

SELECT 
    *
FROM
    employees
WHERE
    hire_date <= '1995-01-01';
    
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F' AND hire_date >= '2000-01-01';
    
SELECT 
    *
FROM
    salaries
WHERE
    salary > '150000';
    
    
    /* to retrieve distinct data and no duplicate values*/
SELECT DISTINCT
    gender
FROM
    employees;
    
    /* Aggregate Functions */
/*to get the total number of employees in the employees table*/

SELECT 
    COUNT(emp_no)
FROM
    employees;

/*to get the number of employees with distinct first names in employees table*/

SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    
/* to order the data to be retrieved by a parameter*/

SELECT 
    *
FROM
    employees
ORDER BY first_name;

/* add DESC or ASC to add at the end of the order by code for descending or ascending order*/

SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC;

/* to order first names and last names*/
SELECT 
    *
FROM
    employees
ORDER BY first_name , last_name ASC;
    
SELECT 
    *
FROM
    employees
ORDER BY last_name, first_name ASC;

/* Group By */

SELECT 
    first_name
FROM
    employees;

/* using group by to make sure that every name displayed is dstinct*/

SELECT 
    first_name
FROM
    employees
GROUP BY first_name; 

SELECT DISTINCT
    first_name
FROM 
 employees
GROUP BY first_name;

/* to extract first names and the number of times they appeared in the table in descending order*/

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;

/* to use an alias "AS" to rename title on the second column*/

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name ASC;

/* to view the tables before doing assignment */
SELECT 
    *
FROM
    employees;
SELECT 
    *
FROM
    salaries;
/* Assignment*/
SELECT 
    salary, COUNT(emp_no) AS emps_with_same_salary
FROM
    Salaries
WHERE salary > 80000
GROUP BY salary
ORDER BY salary ASC;

/* HAVING is similar to the WHERE clause except that it is applied to the GROUP BY clause */
/* HAVING can have conditions with aggregate functions (e.g count) while WHERE cannot */

/* to extract employees whose first names occur more than 250 times */
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;

/* Exercise */

SELECT 
    *, AVG(salary)
FROM
    salaries
WHERE
    salary > '120000'
GROUP BY emp_no
ORDER BY emp_no;

SELECT 
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > '120000';

/* Extracting a list of all names that are encountered less than 200 times. Let the data refer to people hired after the 1st of january 1999*/
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;

/* For aggregated functions use Having and Group BY, for non-aggregated functions, use WHERE. HAVING can be applied on non-aggregate and aggregate functions but do not combine the two functions*/   

/* Exercise*/
SELECT 
    *
FROM
    dept_emp;
    
    
SELECT 
    emp_no, COUNT(dept_no) AS More_than_1_Contract
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(dept_no) > 1
ORDER BY emp_no;
/*alternative */
SELECT 
    emp_no
FROM
    dept_emp
WHERE
    from_date > '2000-01-01'
GROUP BY emp_no
HAVING COUNT(from_date) > 1
ORDER BY emp_no;

/*LIMIT clause*/
/* to limit the number of time and data retrieved */

/* To extract the employee numbers of the 10 highest paid employees in the database */

SELECT 
    *
FROM
    salaries
ORDER BY salary DESC
LIMIT 10;

