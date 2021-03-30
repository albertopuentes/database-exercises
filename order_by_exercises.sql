# Order By Exercises

# Exercise 2
select *
from employees
where first_name in ('irena', 'vidya', 'maya')
order by first_name asc;
# my first result was Irena Reutenauer
# my last result was Vidya Simmen

# Exercise 3
select *
from employees
where first_name in ('irena', 'vidya', 'maya')
order by first_name asc, last_name asc;
# my first result was Irena Acton
# my last result was Vidya Zweizig

#Find all employees with first names 'Irena', 'Vidya', or 'Maya', 
# and order your results returned by last name and then first name. 
# In your comments, answer: What was the first and last name in the first row of the results? 
# What was the first and last name of the last person in the table?

# Exercise 4
select *
from employees
where first_name in ('irena', 'vidya', 'maya')
order by last_name, first_name;
# my first result was Irena Acton
# my last result was Maya Zyda

# Exercise 5
select *
from employees
where last_name like 'e%e'
order by emp_no;
# 899 employees returneds
# first emp_no is 10021 and is Ramzi Erde
# Last emp_no is 499648 and is Tadahiro Erde

# Exercise 6
select *
from employees
where last_name like 'e%e'
order by hire_date desc;
# 899 employees returned
# newest employee is Teiji Eldridge
# oldest employee is Sergi Erde

# Exercise 7
select *
from employees
where hire_date like '199%' and birth_date like '%-12-25'
order by birth_date, hire_date desc;
# 362 employees returned
# name of the oldest employee who was hired last is Khun Bernini
# name of the youngest employee who was hired first is Douadi Pettis

