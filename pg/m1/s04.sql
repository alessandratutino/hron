-- examples on select

-- select all
--questo ci fa vedere tutto
select *
from region;

-- a common select, filtered on rows and columns
select name --voglio la colonna 'name'
from region -- dalla tabella region
where region_id = 1; --e solo la riga 1
--mi beccherà solo la relativa cella.

-- select a full single column
--select *
select manager_id --questa colonna mi fa vedere solo gli id dei managaer.
from employee;

-- select only distinct values in a column
select distinct manager_id --qui elimina tutti i duplicati
from employee;

-- using column name alias
select title, min_salary as "min salary", min_salary as min --qui ho rinominato i nomi delle colonne solo per questo result set;
from job;

-- a result set with changed data (and column names)
select title,
    min_salary,
    min_salary + 200 as "option 1",
    min_salary + (min_salary * 0.05) as "option 2"
from job;

-- no table involved in this select
select current_date, --qui non lavoriamo su colonne ma vogliamo leggere solo il risultato.
    sqrt(25) as "squared root",
    5 / 2 as "integer division";

-- concatenation by operator ||

--voglio concatenare la regio_id con la country_id e mettere 
--come noma di questa colonna 'te countries';

select region_id || ': ' || country_id as "the countries" 
from country;

-- concatenation by concat()
select concat(region_id, ': ', country_id) as "the countries"
from country;

-- limit to get result set with a specified size
select first_name, last_name
from employee
limit 10;

-- second page
select first_name, last_name
from employee
offset 10 limit 10;

-- eleventh page
select first_name, last_name
from employee
limit 10 offset 100;
