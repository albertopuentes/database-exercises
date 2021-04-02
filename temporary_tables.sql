
use florence01;

-- Exercise 1 - re-create employees_with_departments table

CREATE TEMPORARY TABLE employees_with_departments AS
	SELECT employees.employees.emp_no, employees.employees.first_name, employees.employees.last_name, 
	employees.dept_emp.dept_no, employees.departments.dept_name
	FROM employees.employees
	JOIN employees.dept_emp USING (emp_no)
	JOIN employees.departments USING (dept_no)
	LIMIT 100;

-- Exercise 1.a. Add column full_name (VARCHAR whose length is sum of lengths of first & last name columns)

ALTER TABLE employees_with_departments ADD full_name VARCHAR(30);

-- Exercise 1.b. update so full_name column contains correct data

UPDATE employees_with_departments SET full_name = CONCAT(first_name, " ", last_name);

-- Exercise 1.c. Remove the first_name and last_name columns from the table

ALTER TABLE employees_with_departments DROP first_name, drop last_name;


-- Exercise 2 createtemp table based on the payment table from the sakila database. 
-- transform the amount column such that its stored as integer representing cents

CREATE TEMPORARY TABLE sakila_exercise AS
	SELECT payment_id, customer_id, staff_id, rental_id, amount * 100 as cents, payment_date, last_update
	FROM sakila.payment AS sp
	
ALTER TABLE sakila_exercise MODIFY cents INT NOT NULL;	
