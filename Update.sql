/*Commit & RollBack*/

SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 5;

UPDATE employees 
SET 
    first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
    emp_no = 999901;
    
 
SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 5;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

commit;

UPDATE departments_dup 
SET 
    dept_no = 'd011',
    dept_name = 'Quality Control';

ROLLBACK;    

COMMIT;


