-- examples on left/right outer join - from "many" perspective

-- Treasury is a department
-- fammi vedere i dipartimenti che hanno id 11 e 12
select name
from department
where department_id in (11, 12);

-- the inner join skips Treasury
select e.first_name, e.last_name, d.name as "Department Name"
from employee e inner join department d
    using(department_id)
where d.department_id in (11, 12);

-- right outer join
-- sto dicendo di non buttare via il treasury anche se non c'è neanche un dipendente che lavora per trasury.
select e.first_name, e.last_name, d.name as "Department Name"
from employee e right outer join department d
    using(department_id)
where department_id in (11, 12);

-- as above, rewritten as left outer join
select e.first_name, e.last_name, d.name as "Department Name"
from department d left outer join employee e
    on d.department_id = e.department_id 
where d.department_id in (11, 12);
