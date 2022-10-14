/* to insert and then delete */

INSERT INTO employees
VALUES
(999903,
'1977-09-14',
'Jonathan',
'Creek',
'M',
'1999-01-01'
);

SELECT 
    *
FROM
    titles
LIMIT 10; 

INSERT INTO titles 
(
emp_no, 
title,
from_date
)
VALUES
(
999903,
'Senior Engineer',
'1997-10-01'
);

SELECT 
    *
FROM
    titles
ORDER BY emp_no DESC;

SELECT 
    *
FROM
    dept_emp
ORDER BY emp_no DESC
LIMIT 10;

INSERT INTO dept_emp 
( 
emp_no, 
dept_no, 
from_date, 
to_date
 ) 
 values 
 ( 
 999903,
 'd005',
 '1997-10-01',
 '9999-01-01'
 );
 
 /*to delete from a table*/
 
 USE employees;
 
 COMMIT;
 
 /*first view the entry in the employees table*/
 
SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999903;
    
 /*then view the entry in the titles table */
 
SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;
    
COMMIT;
 
/*to delete */
DELETE FROM employees 
WHERE
    emp_no = 999903;
    
/*to restore the entry deleted*/

ROLLBACK;