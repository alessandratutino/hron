SELECT e.first_name, e.last_name, title
from employee e join job j
using(job_id)

--Nome dei dipendenti che hanno 
--il salario minimo o massimo previsto 
--per il loro job title

select e.first_name, e.last_name, city, country_id
from employee e JOIN department using(department_id) 
join location using(location_id)
where country_id = 'UK';  

--completare 
select first_name, last_name, last_name
from emplyee e JOIN team_employee te
on e.emplyee_id = te.emplyee_id
join team t on t.team_id = te.team_id
where name 

select c.name as "Car name", s.name as "Service name", cs.checkin, cs.checkout
from car c join car_service cs using(car_id) -- perchè è come se ci fosse una terza tabella che ha come PK le PK di delle due tabelle(?)
join service s using(service_id);