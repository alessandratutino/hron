-- examples on group by

-- grouping employees by department and then by job id
select department_id, job_id
from employee
group by department_id, job_id
order by department_id;

-- compare group by to select distinct
-- select distinct department_id, job_id, first_name, last_name 
-- from employee
-- order by department_id;

-- average salary for all the employees
select round(avg(salary), 2) as avg_sal
from employee;

-- average salary for each department
-- senza ROUND metterebbe tanti deciamali dopo il punto
-- voglio vedere il salario medio raggruppato per dipartimento ma solo per i primi 3 (limit)
-- per ogni dipartimento, mettimi nella seconda colonna il salario medio
select department_id, round(avg(salary)) as avg_sal
from employee
group by department_id
order by avg_sal desc
limit 3;

-- max salary for employees by department, from top downward
-- mettimi nella seconda colonna la somma salariale
-- raggruppando dalla tab employee per dip.id
-- ordinando per salario decrescente
select department_id, max(salary) as sum_salary
from employee
group by department_id
order by sum_salary desc;

-- same, but showing department name in result set
-- dalle tabelle employee e department_id, usando il dipartimento_id
-- raggruppa per nome di dipartimento
-- odina per somma salariare decrescente
-- e mostrami nella colonna 1 il nome del dip. e nella colonna 2 la somma salariale
select d.name, max(e.salary) as sum_salary
from employee e join department d
	using (department_id)
group by d.name
order by sum_salary desc;

-- average salary for each department, excluding the employees not assigned to a department
-- round(avg(salary),2) fammi l'arrotondamento del salario con 2 decimali
-- dalla tabella employee
-- (WHERE)filtra per department_id non nullo, quindi non mostrarmi quelli che non hanno un collegamento con il dipartimento.
-- where mi permette di filtrare prima di fare il raggruppamento
-- (GROUP BY) raggruppando per dep_id
-- (ORDER BY)ordinando per media salariale discendente 
-- (SELECT)e leggimi nella prima colonna il department_id e nella seconda colonna la media salariale
select department_id, round(avg(salary), 2) as avg_sal
from employee
where department_id is not null
group by department_id
order by avg_sal desc;

-- average salary for employees hired from 2020 on, grouped by department
-- voglio tutti quelli che sono stati assunti dal 2020-01-01
-- raggruppati per nome
-- dalle tabelle employee e department, usando il diparmente_id 
-- mostrami le colonne con il nome del dipartimento e la media salariale 
select d.name, round(avg(e.salary)) as avg_sal
from employee e join department d
	using (department_id)
where hired >= '2020-01-01'
group by d.name;

select last_name, d.department_id
from employee e join department d
using (department_id)
order by last_name, first_name;

