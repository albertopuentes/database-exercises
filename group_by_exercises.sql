

# Exercise 2

select distinct title
from titles;
# 7 unique titles
# Senior Engineer
# Staff
# Engineer
# Senior Staff
# Assistant Engineer
# Technique Leader
# Manager

# Exercise 3

select last_name
from employees
where last_name like 'e%e'
group by last_name;

# 5 unique last names that fit conditions

# Exercise 4

select last_name, first_name
from employees
where last_name like 'e%e'
group by last_name, first_name;
# 846 unique rows that fit conditions

# Exercise 5

select last_name
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;
# 3 unique last names fitting conditions
# Chleq
# Lindqvist
# Qiwen

# Exercise 6
select last_name, count(last_name)
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name
order by count(last_name);
# Qiwen	168
# Chleq	189
# Lindqvist	190

# Exercises 7
select gender, first_name, count(first_name)
from employees
where first_name in ('irena', 'vidya', 'maya')
group by gender, first_name

# 
# M	Irena	144
# M	Maya	146
# M	Vidya	151
# F	Irena	97
# F	Maya	90
# F	Vidya	81

# Exercise 8

select lower(concat(
substr(first_name, 1, 1), substr(last_name, 1, 4), '_', substr(birth_date, 6, 2), substr(birth_date, 3, 2))) as username, count(*) as count_employees
from employees
group by username
having count_employees > 1;