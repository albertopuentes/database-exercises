
# Exercise 2
select concat(first_name, ' ', last_name)
from employees
where last_name like 'e%e'; 

# Exercise 3
select upper(concat(first_name, ' ', last_name))
from employees
where last_name like 'e%e'; 

# Exercise 4

select datediff(curdate(), hire_date) as 'Days Employed', first_name, last_name
from employees
where hire_date like '199%' and birth_date like '%-12-25';

# Exercise 5

select max(salary)
from salaries;
# 158220

select min(salary)
from salaries;
# 38623

# Exercise 6

select lower(concat(
substr(first_name, 1, 1), substr(last_name, 1, 4), '_', substr(birth_date, 6, 2), substr(birth_date, 3, 2))) as 'username', first_name, last_name, birth_date
from employees;



