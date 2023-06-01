-- Minimal SQL

-- select all
select *
from service;

select *
from region;

select name
from region;

-- insert a new row
insert into service (name) values ('Scratchaway'); --nome colonna tra parentesi

-- update a row
update service 
set location_id = 1400; --qui dico su quali colonne voglio operare 
--non posso avere due righe con la stessa PK per
 questo ho commentato quella immediatmente sotto.
--where name = 'Scratchaway';
where service_id = 4; --where dice su quali righe operare;

-- delete a row
delete from service
--where name = 'Scratchaway';
where service_id = 4;
