-- examples on full outer join

-- Ki and Kimberely
select first_name, last_name, department_id 
from employee
where first_name like 'Ki%';

-- Treasury
select name
from department
where name like 'T%';

-- inner join, Kimberely and Treasury discarded
select first_name, last_name, name
from employee e join department d 
    using(department_id)
where first_name like 'Ki%' or d.name like 'T%'; -- filtro in cui dico che voglio i dipendenti che cominciano per Ki o i nomi dei dipartimenti che cominciano per T.

-- left join, Treasury discarded
--qui toglie il dipartimento del tesoro
select first_name, last_name, name
from employee e left outer join department d 
    using(department_id)
where first_name like 'Ki%' or d.name like 'T%'; --Qui mi dà null per Kimberly 

-- right join, Kimberely discarded
-- qui toglie completamente Kimberly
select first_name, last_name, name
from employee e right outer join department d 
    using(department_id)
where first_name like 'Ki%' or d.name like 'T%';

-- full join, both Kimberely and Treasury are in!
--qui li tiene entrambi

select first_name, last_name, name
from employee e full outer join department d 
    using(department_id)
where first_name like 'Ki%' or d.name like 'T%'; 
