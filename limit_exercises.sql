
# Exercise 2

SELECT DISTINCT last_name FROM employees
order by last_name desc
limit 10;

# Zykh
# Zyda
# Zwicker
# Zweizig
 Zumaque
# Zultner
# Zucker
# Zuberek
# Zschoche
# Zongker

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

