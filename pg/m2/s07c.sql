-- Simplified emulation of full outer join by union

-- Left join for department 12 + 'Grant' -> Treasury is missing
select first_name, last_name, name, department_id
from employee left outer join department
    using (department_id)
where department_id = 12 or last_name = 'Grant';

-- Right join for department 12 + 'Grant' -> Kimberely is missing
select first_name, last_name, name, department_id
from employee right outer join department
    using (department_id)
where department_id = 12 or last_name = 'Grant';

-- (Soft) emulation of a FULL OUTER JOIN
	select first_name, last_name, name, department_id
	from employee left outer join department
	   using (department_id)
	where department_id = 12 or last_name = 'Grant'
union
	select first_name, last_name, name, department_id
	from employee right outer join department
	   using (department_id)
	where department_id = 12 or last_name = 'Grant';
