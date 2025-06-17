drop database if exists users;
create database users;

create table if not exists users.users2021 (UserID INT primary key , NAME varchar(50));
create table if not exists users.users2022 (UserID INT primary key , NAME varchar(50));
create table if not exists users.users2023 (UserID INT primary key , NAME varchar(50));

insert into users.users2021(UserID,NAME) values (1,'Ashish'),(2,'Laura'),(3,'Prakesh');
insert into users.users2022(UserID,NAME) values (1,'Ashish'),(2,'Laura'),(3,'Prakesh'),(4,'Grace');
insert into users.users2023(UserID,NAME) values (1,'Ashish'),(2,'Laura'),(5,'Henry'),(6,'Aditya');

select * from users.users2021;
select * from users.users2022;
select * from users.users2023;


-- Joins 2021-2022
 select * from users.users2021 as t_2021 inner join  users.users2022 as t_2022 on t_2021.UserID =t_2022.UserID;
 
 -- Joins 2022 & 2023
 select * from users.users2022 as t_2022 inner join  users.users2023 as t_2023 on t_2022.UserID =t_2023.UserID;
 
 -- Joins 2021 & 2023
  select * from users.users2021 as t_2021 inner join  users.users2023 as t_2023 on t_2021.UserID =t_2023.UserID;
  
  -- joins 2021,2022 & 2023
select * from users.users2021 as t_2021 inner join  users.users2022 as t_2022 on t_2021.UserID =t_2022.UserID
inner join users.users2023 as t_2023 on t_2023.UserID=t_2021.UserID;
  
-- Left Join
  select * from users.users2021 as t_2021 left join  users.users2022 as t_2022 on t_2021.UserID =t_2022.UserID;
  
  -- Right Join
    select * from users.users2021 as t_2021 right join  users.users2022 as t_2022 on t_2021.UserID =t_2022.UserID;
    
-- Cross Join
 select * from users.users2021 as t_2021 cross join  users.users2022 as t_2022 on t_2021.UserID =t_2022.UserID;
 
select * from users.users2021 as t_2021 right join  users.users2022 as t_2022 on t_2021.UserID =t_2022.UserID
union
 select * from users.users2021 as t_2021 left join  users.users2022 as t_2022 on t_2021.UserID =t_2022.UserID;
 
 
 -- UNION Operators| removes duplicates
 
select * from users.users2021 union all
select * from users.users2022 union all select * from users.users2023;   -- this is union all (don't remove duplicates)

-- Except
select * from users.users2021 except select * from users.users2022; 

-- INTERSECT | showing the common data
 select * from users.users2021 intersect select * from users.users2022;
  select * from users.users2022 intersect select * from users.users2023 ;
  
  
   select * from users.users2021 intersect select * from users.users2022 INTERSECT select * from users.users2023;
   
-- list  the new users added in 2022
  select * from users.users2022 except select * from users.users2021; 
-- list the new users added in 2023
select * from users.users2023 except select * from users.users2022; 

-- list the users who left us
select * from users.users2021 except select * from users.users2022 except select * from users.users2023 ; 

-- list all the users that are there thoughout the database for a year 2021 & 2022
select * from users.users2022 union select * from users.users2021 ; 

-- list all the users that are there thoughout the database
select * from users.users2021 union select * from users.users2022  union select * from users.users2023; 

-- list all the users that us last 3 years
select * from users.users2021 intersect select * from users.users2022  intersect  select * from users.users2023; 

-- list the all the users except that users who are there with us from 3 years 
 select * from users.users2021 union select * from users.users2022  union select * from users.users2023
 except
 select * from users.users2021 intersect select * from users.users2022  intersect  select * from users.users2023; 
 
 
 -- Operators with join
 select * from users.users2021 as t_2021 left join users.users2022 as t_2022 on t_2021.UserID=t_2022.UserID
 UNION
 select * from users.users2021 as t_2021 RIGHT join users.users2022 as t_2022 on t_2021.UserID=t_2022.UserID;