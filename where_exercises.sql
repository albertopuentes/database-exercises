uuse employees;

# Where Exercises

# Exercise 2
select *
from employees
where first_name in ('irena', 'vidya', 'maya');
#709 records returned

# Exercise 3
select *
from employees
where first_name = 'irena' or first_name = 'vidya' or first_name = 'maya';
# 709 records returned

# Exercise 4
select *
from employees
where gender = 'm' and (first_name = 'irena' or first_name = 'vidya' or first_name = 'maya');
# 441 records returned

# Exercise 5
select *
from employees
where last_name like 'e%';
# 7330 records returned

# Exercise 6
select *
from employees
where last_name like 'e%' or last_name like '%e';

select *
from employees
where last_name not like 'e%' and last_name like '%e';
# 30723 employee last names starts or ends with 'e'
# 23393 employee last names end with 'e' but don't start with 'e'

# Exercise 7
select *
from employees
where last_name like 'e%' and last_name like '%e';

select *
from employees
where last_name like '%e';

# 899 employee last names start AND end with 'e'
# 24292 employee last names end with 'e' regardless of whether or not they start with 'e'

# Exercise 8

select emp_no
from employees
where hire_date between '1990-01-01' and '1999-12-31';
# 135214 employees hired in 90s

# Exercise 9
select emp_no
from employees
where birth_date like '%%%%-12-25';
# 842 employees born on Christmas Day

# Exercise 10

select emp_no
from employees
where hire_date between '1990-01-01' and '1999-12-31' and birth_date like '%%%%-12-25';
# 362 employees hired in 90s and on Christmas Day

# Exercise 11
select emp_no
from employees
where last_name like '%q%';
# 1873 employees have q in last name

# Exercise 12
select emp_no
from employees
where last_name like '%q%' and last_name not like '%qu%';
# 547 employees have 'q' in last name but not 'qu'