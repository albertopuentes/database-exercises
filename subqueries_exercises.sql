
-- Exercise 1
SELECt first_name, last_name, hire_date FROM employees join dept_emp using (emp_no)
WHERE hire_date = (
    SELECT hire_date FROM employees
    WHERE emp_no = 101010)
and to_date > now();

-- Exercise 2

select title
from titles
where emp_no in (
	select emp_no
	from employees
	where first_name = 'aamod')
and to_date > now()
group by title;

-- Exercise 3

select emp_no
from employees
where emp_no in (
	select emp_no
	from dept_emp
	where to_date < now());

-- 85108 employees no longer working for the firm

-- Exercise 4

select first_name, last_name
from employees
where emp_no in (
	select emp_no
	from dept_manager
	where to_date > now())
and gender = 'F'

-- Isamu	Legleitner
-- Karsten	Sigstam
-- Leon	DasSarma
-- Hilary	Kambil

-- Exercise 5

select first_name, last_name 
from employees
where emp_no in (
	select emp_no
	from salaries
	where salary > (
			select avg(salary)
			from salaries)
	and to_date > now());

-- 154543 current employees have salaries higher than historical avg

-- Exercise 6


select salary
from salaries
where salary in (
	select max(salary)
	from salaries
	where max(salary) < (
		select stdev(salary)
		from salaries)






