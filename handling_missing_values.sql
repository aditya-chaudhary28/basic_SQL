select * from messy_indian_dataset;

-- Handling Missing Values 
-- find the rows which have no  missing values
select * from messy_indian_dataset where
name is not null and age is not null and gender is not null and email is not null and phone_number is not null and city is not null and state is not null
and purchase_amount is not null and purchase_date is not null ;

-- find the rows which have null values
select * from messy_indian_dataset where
name is  null or age is  null or gender is  null or email is  null or phone_number is  null or city is  null or state is  null
or purchase_amount is  null or purchase_date is  null ;

-- Saving the table without Null Values
create table if not exists clean_table as 
select * from messy_indian_dataset where
name is not null and age is not null and gender is not null and email is not null and phone_number is not null and city is not null and state is not null
and purchase_amount is not null and purchase_date is not null ;
select * from clean_table ;


-- Filling missing age all specific values
update messy_indian_dataset set age= coalesce(age,0);
select * from messy_indian_dataset;

-- Filling Nulls with Specific Values
 update messy_indian_dataset
 set name=coalesce(name,'Unknown'),
 gender=coalesce(gender,'Unknown'),
 email=coalesce(email,'Unknown'),
 phone_number=coalesce(phone_number,'Unknown'),
 state=coalesce(state,'Unknown'),
 purchase_date=coalesce(purchase_date,'2023-12-12');
 select * from messy_indian_dataset;
 
 
 
 
 
-- Filling Null amount with Specific Amount
update messy_indian_dataset
 set purchase_amount=(
                     select avg_purchase_amount from
					(
                     select avg (purchase_amount)  from messy_indian_dataset
					 )
                    as subquery
                    ) where purchase_amount is null;
                    
 select * from messy_indian_dataset;
 
 -- Filling Null city with most Frequent City
 update messy_indian_dataset
 set city =(
 select most_frequent_city from
 (
 select city as most_frequent_city,count(*) as 'frequency' from  messy_indian_dataset
 where city is not null 
 group by city
 order by count(*) desc
 limit 1
 ) as subquery
 ) where city is null;
 select * from messy_indian_dataset;
 
 -- Finding only Unique Rows 
 select  distinct * from messy_indian_dataset;
 
 -- Finding Unique Value Based on IDs
 select id from messy_indian_dataset
 group by id
 order by id;
 
  -- Finding Unique Value Based on Name
  select name from messy_indian_dataset
 group by name
 order by name;
  
-- Finding unique values based on IDs using rank
select *,row_number() over(partition by id order by id) as 'rank' from messy_indian_dataset; 

-- Finding Outliers based on Z-Score
select * from
(
       select * , ABS(purchase_amount-avg(purchase_amount)over()) / stddev(purchase_amount) over() as 'z_score'
        from messy_indian_dataset
 ) as sub_table where sub_table.z_score<2;
 
 -- Add new Columns for a day, month ,year 
 select * from messy_indian_dataset;
 
 alter table messy_indian_dataset
 add column day int,
 add column month int,
 add column year int;
 select * from messy_indian_dataset;
 
 
 -- Update the new column with extracted day ,month and year values
 update messy_indian_dataset
 set day=Day(purchase_date),
   Month=Month(purchase_date),
  Year=Year(purchase_date);
select * from messy_indian_dataset;
 
 -- Add a new column for a day of the week & save day name there 
 alter table messy_indian_dataset
 add column day_of_week varchar(20);

 select * from messy_indian_dataset;
 
 update messy_indian_dataset
 set day_of_week=dayname(purchase_date);
  select * from messy_indian_dataset;
  
-- Add a new column for a name of the month & save day name there
 alter table messy_indian_dataset
 add column month_name varchar(20);
  select * from messy_indian_dataset;
   update messy_indian_dataset
 set month_name=monthname(purchase_date);
  select * from messy_indian_dataset;
 
 
 