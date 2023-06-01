SELECT job_id, max(salary) as "Max salary", min(salary) as "Min salary", sum(salary) 
from employee
GROUP BY(job_id);

SELECT count(job_id), j.title
from employee e join job j
using(job_id)
group by j.title
having j.title = 'Programmer'; -- filtraggio da fare dopo il grouping

-- imbrogliando
SELECT count(job_id)
from employee 
where job_id = 15;

SELECT count(manager_id)
from employee;

SELECT count(DISTINCT employee_id!=manager_id)
from employee;


--da fare con il subquery
SELECT e.first_name, e.last_name
from employee e
where e.employee_id != manager_id; -- manager e impiegati hanno necessariamente un id_ diverso quindi devo fare una select.

SELECT (max(salary) - min(salary)) as "Difference"
from employee;

SELECT job_id, (max(salary) - min(salary)) as "Difference"
from employee
GROUP BY(job_id)
HAVING (max(salary) != min(salary)); --having lavora sulle colonne per questo non usiamo il where, anche perché noi lavoriamo sulla colonna Difference. 

--Esercizio a parte sulla subquery:

--qui vediamo salario minimo dei programmatori
SELECT max(salary)
from employee e join job j
using(job_id)
where title = 'Programmer';

-- qui il nome de programmatore che prende salario max
select first_name, last_name
from employee e join job j
using (job_id)
where title = 'Programmer' and salary =(
    SELECT max(salary)
from employee e join job j
using(job_id)
where title = 'Programmer');


SELECT manager_id, min(salary) as "min salary"
from employee
where manager_id is NOT NULL and first_name != 'Alexander'
group by manager_id
HAVING min(salary) >= 6000
order by min(salary) ASC;

--Qui va via Alexander Hunold

select employee_id, first_name, last_name
from employee
where salary = 9000 and manager_id = 102;
