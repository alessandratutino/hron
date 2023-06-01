-- left/right outer join - from "many" perspective

-- Kimberely is an employee
select employee_id, first_name, last_name, department_id 
from employee
where last_name like 'Gr%'; -- quando parliamo di filtro facciamoriferimetno al WHERE.

-- the inner join skips Kimberely
-- la inner join fa sparire le righe che non hanno connessione

select e.employee_id, first_name, last_name, d.name as "department name"
from employee e join department d --employee è la parte many
    on e.department_id = d.department_id --department_id di employee e di di department
where last_name like 'Gr%';

-- left outer join
-- è un outer join in cui ho detto a postgres di tenermi i dati di sinistra (employee);
-- e far sparire quelli di destra (quindi quelli della FK)
select e.first_name, e.last_name, d.name as "department name"
from employee e left outer join department d
    using (department_id)
where e.last_name like 'Gr%';

-- rewritten as right outer join
--come l'esempio precedente ma in questo caso o invertito la relazione quindi a destra ho employee, 
-- il succo è sempre lo stesso (meglio left outer join).
select e.first_name, e.last_name, d.name as "department name"
from department d right outer join employee e
    using (department_id)
where e.last_name like 'Gr%';

-- "left" / "right" imply "outer"
select e.first_name, e.last_name, d.name as "department name"
from employee e left join department d
    using (department_id)
where e.last_name = 'Grant';
