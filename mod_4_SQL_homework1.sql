-- 1. How many actors are there with the last name ‘Wahlberg’?
select last_name, count(last_name)
from actor 
where last_name like 'Wahlberg'
group by last_name;

-- There are 2 actors with last_name 'Wahlberg'


-- 2. How many payments were made between $3.99 and $5.99?
select count(amount)
from payment 
where amount between 3.99 and 5.99;

-- There were 4794 payments made between 3.99 and 5.99


-- 3. What film does the store have the most of? (search in inventory)
select film_id, count(film_id)
from inventory 
group by film_id
order by count desc;

-- There are 72 films all with 8 copies in inventory

-- 4. How many customers have the last name ‘William’?
select last_name, count(last_name)
from customer
where last_name like 'William%'
group by last_name order by count desc;

-- There are 0 customers with the last name 'William', this is one each of last name 'Williams' and 'Williamson'.

-- 5. What store employee (get the id) sold the most rentals?
select staff_id, count(staff_id)
from rental 
group by staff_id 
order by count desc;

-- Store employee with staff_id 1 has 8040 rentals

-- 6. How many different district names are there?
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME = 'district' 
select count(distinct district)
from address

-- There are 378 districts


-- 7. What film has the most actors in it? (use film_actor table and get film_id)

select film_id, count(actor_id)
from film_actor
group by film_id 
order by count desc

-- "Lamb Cincinatti", film ID 508 has 15 actors in it.

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select store_id, count(last_name) 
from customer
where store_id  = 1 and last_name like '%es'
group by store_id
order by count desc

-- There are 13 customers whith last names ending in 'es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
select amount, count(amount), count (distinct amount)
from payment 
where customer_id between 380 and 430 
group by amount
having count(amount) > 250

-- Three payment amounts had rentals of greater than 250 within customer ID range of 380-430 (2.99, 4.99, 6.99).

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
select count(distinct rating)
from film

select rating, count(rating)
from film 
group by rating 
order by count desc


-- There are 5 rating categories and the PG-13 rating has the most films at 223. 