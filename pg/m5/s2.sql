-- examples on insert

-- the current table status
select *
from service;

-- plain insert
-- values = valori che voglio mettere nella mia riga
-- 20 è la primary key

insert into service (service_id, name, location_id) values
    (20, 'Mirdor Shifty Solutions', 1100);

    insert into service ( name, location_id) values
    ('ciao' , 1200);

-- multiline insert
insert into service (service_id, name, location_id) values
	(22, 'Old Gondor Messingup', 1200),
	(23, 'Rohan Leather Finitures', 1300);

-- column with default value (nullable or other) could be skipped
insert into service (service_id, name) values
    (32, 'Kerr & Reetch Associates');

-- auto-incremented value for pk
insert into service (name) values ('Multiple Oz');

-- using default values for each column
insert into service (name) values (DEFAULT);

-- insert relying on column definition on table
-- non ho specificato il nome delle colonne però me lo ha aggiunto lo stesso
insert into service values
    (33, 'Rainydays Carwash', null);
