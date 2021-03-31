

use employees;

# Exercise 2

SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date like '9999-01-01'
order by dept_name;

Exercise 3

SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' and e.gender = 'F'
order by d.dept_name;

# Exercise 4

Select title, count(*) 
from titles
join dept_emp using (emp_no)
join departments using (dept_no)
where dept_emp.to_date like '9999-01-01' and dept_no = 'd009' and titles.to_date like '9999-01-01'
group by title;

	
# Exercise 5 

SELECT d.dept_name as 'Department Name', concat(e.first_name, ' ', e.last_name) as 'Name', salary
FROM employees AS e
join salaries as s using (emp_no)
JOIN dept_manager AS dm using (emp_no)
JOIN departments AS d using (dept_no)
WHERE dm.to_date = '9999-01-01' and s.to_date = '9999-01-01'
order by dept_name;


# Exercise 6
select dept_no, dept_name, count(emp_no) as num_employees
from dept_emp
join departments using (dept_no)
where dept_emp.to_date like '9999-01-01'
group by dept_no

Exercise 7

SELECT dept_name, avg (salary)
FROM departments
JOIN dept_emp using (dept_no)
JOIN salaries using (emp_no)
WHERE salaries.to_date LIKE '9999-01-01' and dept_emp.to_date like '9999-01-01' and dept_name = 'Sales'
group by dept_name;


# Exercise 8
SELECT first_name, last_name
FROM employees
JOIN salaries using (emp_no)
JOIN dept_emp using (emp_no)
Join departments using (dept_no)
WHERE salaries.to_date LIKE '9999-01-01' and dept_emp.to_date like '9999-01-01' and dept_name = 'Marketing'
order by salary desc
limit 1;

# Question 9
SELECT first_name, last_name, salary, dept_name
FROM employees AS e
join salaries as s using (emp_no)
JOIN dept_manager AS dm using (emp_no)
JOIN departments AS d using (dept_no)
WHERE dm.to_date = '9999-01-01' and s.to_date = '9999-01-01'
order by salary desc
limit 1;
