-- examples on update

-- the current table status
select *
from service;

-- updating a single row (if found)
update service
set name = 'hello', location_id = 1600
where service_id = 6;

-- updating all rows - by mistake?
-- ??? committing ???
update service
set name = 'mistake?';

-- updating (potentially) more rows
-- cambia tutte le righe che hanno service_id>10
update service
set name = 'N/A!'
where service_id > 10;

-- check the current salary for IT people
select e.first_name, e.last_name, e.salary
from employee e join department d using (department_id)
where d.name = 'IT'
order by salary asc;


-- update - where subquery
-- assuming department name is not duplicated!
-- Alexander non ha ricevuto un aumento perché è manager
-- aggionami la tab employee
update employee
set salary = salary + 100
where manager_id = (
	select manager_id
	from department
	where name = 'IT');
