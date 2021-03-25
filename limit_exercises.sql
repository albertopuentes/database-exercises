
# Exercise 2

SELECT DISTINCT title FROM titles
order by title desc
limit 10;

# Technique Leader
# Staff
# Senior Staff
# Senior Engineer
# Manager
# Engineer
# Assistant Engineer

# Exercise 3
select first_name, last_name
from employees
where hire_date like '199%' and birth_date like '%-12-25'
order by hire_date
limit 5;

# Alselm	Cappello
# Utz	Mandell
# Bouchung	Schreiter
# Baocai	Kushner
# Petter	Stroustrup

# Exercise 4
select first_name, last_name
from employees
where hire_date like '199%' and birth_date like '%-12-25'
order by hire_date
limit 5 offset 45;

# Pranay	Narwekar
# Marjo	Farrow
# Ennio	Karcich
# Dines	Lubachevsky
# Ipke	Fontan

