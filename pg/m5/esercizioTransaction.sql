
--TRANSACTION: Posso raggruppare i miei comandi in un blocco che comincia con BEGIN e finisce col ROLLBACK
-- tieni a mente l'idea della prelievo in banca: o restituisce i soldi e riduce il conto in banca dell'utente, oppure non fa niente;
--1) vedo cosa c'è dentro la tabella service
--2) vogliamo che ci sia un'attività a Oxford e Utrecht
-- metto tra parentesi il nome delle colonne che voglio usare
-- values = parola chiave
-- qui mettiamo nome e location(id)



begin;
select *
from service;

insert into service(name, location_id) values

    ('esempio 1', 2500), ('esempio 2', 3100);
    select *
from service;
UPDATE service set name = 'esempio A'where name = 'esempio 1';
select * from service;
delete from service where name = 'esempio 2';
SELECT * from service;  
rollback;
select *
from service;