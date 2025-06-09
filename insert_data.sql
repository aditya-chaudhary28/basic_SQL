create database if not exists peoples;
CREATE TABLE people (
    person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50)
);

INSERT INTO people (first_name, last_name, age, city) VALUES ('Aiden', 'Taylor', 48, 'Phoenix');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Catherine', 'Johnson', 46, 'San Francisco');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Danielle', 'Allen', 23, 'Columbus');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Elijah', 'Hernandez', 66, 'Philadelphia');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Angela', 'Robinson', 78, 'San Jose');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Hannah', 'Garcia', 58, 'Philadelphia');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Christian', 'Miller', 21, 'Jacksonville');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Caleb', 'Rivera', 50, 'Houston');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Barbara', 'King', 39, 'Charlotte');
INSERT INTO people (first_name, last_name, age, city) VALUES ('George', 'Taylor', 62, 'Dallas');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Cody', 'Mitchell', 54, 'New York');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Elijah', 'Hill', 60, 'Austin');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Judy', 'Lewis', 24, 'New York');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Hailey', 'Mitchell', 33, 'Los Angeles');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Betty', 'Ramirez', 41, 'Austin');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Evelyn', 'Clark', 28, 'Philadelphia');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Diane', 'Anderson', 64, 'Dallas');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Brian', 'Hill', 65, 'New York');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Judith', 'Young', 18, 'Columbus');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Katherine', 'Lee', 51, 'Philadelphia');
select * from people;
INSERT INTO people (first_name, last_name, age, city) VALUES ('Gary', 'Davis', 35, 'Denver');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Dorothy', 'Flores', 56, 'Denver');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Bryan', 'Mitchell', 40, 'Philadelphia');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Eric', 'Gonzalez', 22, 'San Jose');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Connor', 'Nguyen', 34, 'Denver');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Charles', 'Williams', 39, 'Philadelphia');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Evelyn', 'Wilson', 51, 'Denver');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Danielle', 'Green', 20, 'San Jose');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Austin', 'Torres', 60, 'New York');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Jeffrey', 'Rivera', 79, 'Denver');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Amelia', 'Scott', 52, 'Houston');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Anna', 'Nguyen', 66, 'Fort Worth');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Eric', 'Lopez', 42, 'Houston');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Katherine', 'Wright', 41, 'Denver');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Gregory', 'Rivera', 54, 'Washington');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Barbara', 'Thompson', 50, 'Washington');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Betty', 'Walker', 18, 'San Jose');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Jennifer', 'Jones', 20, 'Los Angeles');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Danielle', 'Roberts', 70, 'San Antonio');
INSERT INTO people (first_name, last_name, age, city) VALUES ('Danielle', 'Young', 23, 'Indianapolis');
-- select * from people;

-- Update the data based on age
-- update people
-- set age=40
-- where person_id=1;
-- select * from people;
update people
set city='aligarh'
where person_id=2;
select * from people;

-- update age based on age
-- delete from people
-- where person_id=1;
-- select * from people

delete from people
where last_name like 'w%';
select * from people;

delete from people;
select * from people;

