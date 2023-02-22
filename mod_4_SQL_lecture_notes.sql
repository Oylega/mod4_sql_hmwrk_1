-- Frist Query, we will select al of the records from the actor table
select * from actor

-- query for first_name and last_name in the actor table 
select FIRST_NAME, LAST_NAME
from ACTOR;

-- Query for a first_name that equals Nick using the WHERE clause
-- like and = perform same function
select FIRST_NAME, LAST_NAME
from actor
where FIRST_NAME = 'Nick';

-- Query for all first_name data that starts with a 'J' using LIKE and WHERE clauses and a wildcard
select FIRST_NAME, ACTOR_ID
from actor
where FIRST_NAME like 'N%'

-- Query for all first_name data that starts with 'K' and has 2 letters after the 'K' again using LIKE and WHERE clauses and the underscore (_)
select FIRST_NAME, ACTOR_ID
from actor
where FIRST_NAME like 'K__';

--Query for all first_name data that starts with a 'K and ends with 'th'
-- We will use the LIKE and WHERE clauses using both wildcard and underscore
select FIRST_NAME, LAST_NAME, ACTOR_ID
from actor
where FIRST_NAME like 'K__%n';

-- Comparing operators
-- >, <, >=, <=, <>

-- Explore data with select all query so that we can change into a new table
select * from payment

-- Query for data that shows customers that paid an amount GREATER than $2
select customer_id, amount
from payment 
where amount > 2.00

-- Query for data that shows customers who paid an amount less than 7.77
select customer_id, amount
from payment 
where amount < 7.99

-- Query for less than or equal to 7.99
select customer_id, amount
from payment 
where amount <= 7.99

-- Greater than or equal to 2
select customer_id, amount
from payment 
where amount >= 2.0

-- Query for data that shows customers who paid an amount not equal to 0.00 in descending order 
select customer_id, amount
from payment 
where amount <> 0.00
order by amount desc;

-- SQL Aggregate Functions! Sum, avg, count, min, max
-- Query to display the sum of amounts paid that are greater than 5.99
select sum(amount)
from payment  
where amount > 5.99;

-- query to display average of amounts paid greater than 5.99
select avg(amount)
from payment 
where amount > 5.99;

-- Query to display the count of amounts paid greater than 5.99
select count(amount) from payment where amount > 5.99;

-- Query to display the amount of distint amounts paid greater than 5.99
select count(distinct amount)
from payment where amount > 5.99;

-- Query to display the min amount greater than 7.99
select MIN(amount) as min_num_payments
from payment 
where amount > 7.99;

-- Query to display max amount greater than 7.99
select max(amount) as max_num_payments
from payment 
where amount > 7.99;

-- query for data that show customers who paid
-- amount BETWEEN 2.00 and 7.99
-- using the BETWEEN with the AND clause -- attached to the WHERE clause
select customer_ID, amount
from payment 
where amount between 2.00 and 7.99
order by amount desc;

-- Demo of groupby
select amount
from payment 
where amount = 7.99;

-- Query to display different amounts grouped together
-- and count amounts
select amount, count (amount)
from payment 
group by amount 
order by amount;

-- query to display customer ids with the summed ammounts for each customer id
select customer_id, sum(amount)
from payment 
group by customer_id 
order by customer_id desc;

-- Query to display customer_ids that show up more than 5 times (if available)
-- Group by customer email
select count(customer_id), email
from customer
group by email 
having count(customer_id) > 4;

select email
from customer;





