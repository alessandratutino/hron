-- examples on aggregate functions

-- count, count distinct
select count(*) as "All employees", count(manager_id) as "Having a manager", 
	count(distinct manager_id) as "How many managers"
from employee;

select count(commission) as "Employees with commission",
	count(distinct commission) as "How many different commissions"
from employee;

-- max, min
select max(salary) as "Max salary", min(salary) as "Min salary",
	round(avg(salary), -2) as "Average salary" --round è una funzione per questo le parentesi.
from employee;

select max(hired) "Most recent hire" , min(hired) "Earliest hire"
from employee;

-- spoiler: subquery to get extra info
select first_name, last_name, salary --prendi il salario minimo di employee ma così prendiamo anche altre informazioni.
from employee
where salary = (
	select min(salary)
	from employee
);

-- min, max on strings
-- sulle stringhe sostanzalmente guardano l'ordine alfabetico
--se cambio last_name con first_name mi spunta l'ultimo nome mentre il primo first name rimane lo stesso
select min(first_name), max(last_name)
from employee;

-- sum: vale solo sui numeri
select sum(salary)
from employee;

select sum(salary)
from employee
where department_id = 5;

-- average
select round(avg(salary), 2) as average, round(avg(distinct salary), 2) as "average no duplicates"
from employee
where department_id = 5;
