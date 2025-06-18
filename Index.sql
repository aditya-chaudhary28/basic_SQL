SELECT * FROM messy_indian_dataset;

--  Simple Index
drop index idx_city on messy_indian_dataset;
create index idx_city on messy_indian_dataset(city); 

select name,city,purchase_amount from messy_indian_dataset where city='Delhi';

-- Composite Index
drop index idx_city on messy_indian_dataset;
create index idx_city on messy_indian_dataset(city,gender); 

select name,city,purchase_amount from messy_indian_dataset where city='Mumbai';

-- Unique Index
drop index idx_city on messy_indian_dataset;
create unique index idx_city on messy_indian_dataset(id); 
select name,city,purchase_amount from messy_indian_dataset where city='Mumbai';

-- Full Text Index
drop index idx_city on messy_indian_dataset;
create fulltext index idx_city on messy_indian_dataset(name,email); 
select name,city,purchase_amount from messy_indian_dataset where match(name,email) against('Rajesh');
 
 



 