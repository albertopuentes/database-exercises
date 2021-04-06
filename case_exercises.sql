

-- Exercise 2

select first_name, last_name,
	case
		when last_name like 'a%' or last_name like 'b%' or last_name like 'c%' or last_name like 'd%' or last_name like 'e%' or last_name like 'f%' or last_name like 'g%' or last_name like 'h%' then 'A-H'
		when last_name like 'i%' or last_name like 'j%' or last_name like 'k%' or last_name like 'l%' or last_name like 'm%' or last_name like 'n%' or last_name like 'o%' or last_name like 'p%' or last_name like 'q%' then 'I-P'
		when last_name like 'z%' or last_name like 'r%' or last_name like 's%' or last_name like 't%' or last_name like 'u%' or last_name like 'v%' or last_name like 'w%' or last_name like 'x%' or last_name like 'y%' then 'Q-Z'
		end as alpha_group
from employees

-- Exercise 3 

select 
	case 
		when birth_date like '195%' then '50s'
		when birth_date like '196%' then '60s'
		when birth_date like '197%' then '70s'
		when birth_date like '198%' then '80s'
		when birth_date like '199%' then '90s'
		when birth_date like '200%' then '00s'
		end as bd_decade,
		count(*)
from employees
group by bd_decade

/*50s	182886
60s	117138 */

