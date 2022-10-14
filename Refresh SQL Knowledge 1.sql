CREATE database IF NOT EXISTS Sales; /* to create a database named sales */
USE Sales;/* means to only run the code on d created database sales */
CREATE TABLE Sales (
    purchase_number INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    Customer_id INT,
    Item_code VARCHAR(10) NOT NULL
);
 /* to create a table named sales with different columns, auto-increment means increases by itself, NOT NULL means must have data */
CREATE TABLE Customers (
    Customer_id INT,
    First_name VARCHAR(255) NOT NULL,
    Last_name VARCHAR(255) NOT NULL,
    Email_address VARCHAR(255) NOT NULL,
    Number_of_complaints INT
);

/* assigning constraints --- primary key*/

CREATE TABLE items (
    item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10 , 2 ),
    company_id VARCHAR(255),
    PRIMARY KEY (item_code)
);

DROP TABLE customers;

CREATE TABLE customers (
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);

DROP TABLE sales;

CREATE TABLE Sales (
    purchase_number INT AUTO_INCREMENT,
    Date_of_purchase DATE,
    customer_id INT,
    item_code VARCHAR(255),
    PRIMARY KEY (purchase_number)
);

/* altering the sales table to add the foreign key, on delete cascade--means that if a specific value from the parent table's primary key is deleted, all the records from the child table referring to the value must be deleted as well */

ALTER TABLE sales
ADD FOREIGN KEY(customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE;

/* to drop the foreign key */

ALTER TABLE sales
DROP FOREIGN KEY sales_ibfk_1;

/* to drop all tables in database*/

DROP TABLE sales;

DROP TABLE customers;

DROP TABLE items;

DROP TABLE companies;

/* to create a table customers */

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);  

/* to add a unique key to the customers table*/

ALTER TABLE customers
ADD UNIQUE KEY (email_address);

/* to drop unique key constraint from the customers table*/
ALTER TABLE customers
DROP INDEX email_address;

/* to alter the initial number of complaints value in the number of complaints column in customers table to zero*/

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

/* to add gender column to table*/

ALTER TABLE customers
ADD COLUMN gender VARCHAR(1)
;

/* to insert details into the customers table*/

INSERT INTO customers ( first_name, last_name, gender)
VALUES ('Peter', 'Figaro', 'M')
;

/* to see a full picture of table*/

SELECT 
    *
FROM
    customers;

DROP TABLE customers;


CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INT,
    PRIMARY KEY (customer_id)
);  

ALTER TABLE customers
ADD UNIQUE KEY (email_address);

ALTER TABLE customers
DROP INDEX email_address;

ALTER TABLE customers
CHANGE COLUMN number_of_complaints number_of_complaints INT DEFAULT 0;

ALTER TABLE customers
ADD COLUMN gender VARCHAR(1)
;

INSERT INTO customers (first_name, last_name, gender)
VALUES ('Peter', 'Figaro', 'M')
;

SELECT 
    *
FROM
    customers;

CREATE TABLE companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number VARCHAR(255),
    UNIQUE KEY (headquarters_phone_number)
);


DROP TABLE companies;

/* to set the companies' name to X*/

CREATE TABLE companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255) DEFAULT 'X',
    headquarters_phone_number VARCHAR(255),
    UNIQUE KEY (headquarters_phone_number)
);

DROP TABLE companies;

CREATE TABLE companies (
    company_id INT AUTO_INCREMENT,
    headquarters_phone_number VARCHAR(255),
    company_name VARCHAR(255),
    PRIMARY KEY (company_id)
);
 /* To modify table constraint to not null*/
 
ALTER TABLE companies
MODIFY company_name VARCHAR(255) NOT NULL;

/* To modify table constraint to null*/

ALTER TABLE companies
MODIFY company_name VARCHAR(255) NULL;

ALTER TABLE companies
CHANGE COLUMN company_name company_name VARCHAR(255) NOT NULL;

INSERT INTO companies (headquarters_phone_number, company_name)
VALUES ('+1 (202) 555-0196', 'Company_A');

SELECT 
    *
FROM
    companies;

ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NULL;

ALTER TABLE companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL;