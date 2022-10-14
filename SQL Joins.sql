SELECT 
    *
FROM
    departments;


/* to drop dept_manager column */

ALTER TABLE departments_dup
DROP COLUMN dept_manager;

ALTER TABLE departments_dup

CHANGE COLUMN dept_no dept_no CHAR(4) NULL;

ALTER TABLE departments_dup

CHANGE COLUMN dept_name dept_name VARCHAR(40) NULL;

/* to recreate new dept_dup and dept_manager_dup table */

DROP TABLE IF EXISTS departments_dup;

DELETE FROM departments

WHERE

    dept_no = 'd010';    
    
CREATE TABLE departments_dup
(
    dept_no CHAR(4) NULL,
    dept_name VARCHAR(40) NULL
);

INSERT INTO departments_dup
(
    dept_no,
    dept_name
)SELECT
                *
FROM
                departments;

SELECT 
    *
FROM
    departments_dup;

INSERT INTO departments_dup (dept_name)

VALUES ('Public Relations');

DELETE FROM departments_dup

WHERE

    dept_no = 'd002';    

INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');

DROP TABLE IF EXISTS dept_manager_dup;

CREATE TABLE dept_manager_dup (

  emp_no int(11) NOT NULL,

  dept_no char(4) NULL,

  from_date date NOT NULL,

  to_date date NULL

  );

 

INSERT INTO dept_manager_dup

SELECT 
    *
FROM
    dept_manager;

INSERT INTO dept_manager_dup (emp_no, from_date)

VALUES (999904, '2017-01-01'),

		(999905, '2017-01-01'),

		(999906, '2017-01-01'),

		(999907, '2017-01-01');

DELETE FROM dept_manager_dup

WHERE

    dept_no = 'd001';

DELETE FROM departments_dup

WHERE

    dept_no = 'd002'; 

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

