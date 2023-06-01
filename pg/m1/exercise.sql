select first_name, last_name, phone, hired
from employee
order by last_name, first_name;

select first_name, last_name, phone, hired 
from employee
where first_name = 'David'  or first_name = 'Peter';

select first_name, last_name, phone, hired 
from employee 
where department_id = 6;

select first_name, last_name, phone, hired, department_id
from employee 
where department_id in (3,5);

select first_name, last_name, phone, hired, salary 
from employee 
where salary > 10000;

select first_name, last_name, phone, hired, salary 
from employee 
where salary < 4000 OR salary > 15000;

select first_name, last_name, phone, hired, salary, department_id 
from employee 
where department_id in (5,8) AND (salary < 4000 OR salary > 15000); -- le parentesi servono perché è lo stesso ragionemento degli operatori booleani con Java, in questo modo prima mi fa l'or e poi l'and. l'and è visto come una moltiplicazione e l'or come la somma.

/*Esercizio 2*/

select first_name, last_name, hired
from employee
where hired::varchar like '2015%';
--where hired >= '2015-01-01' AND '2015-12-31';
select distinct job_id
from employee
ORDER BY job_id;

select first_name, last_name, hired, commission
from employee
where commission is not NULL;

select first_name, last_name, hired, commission
from employee
where last_name like '%a%' or first_name like '%a%';

select first_name, last_name, hired, commission
from department
ORDER BY last_name,first_name;

/*select country
from location
where country_id = 'IT';*/ --NON RIUSCITO