-- find movie ratings from film table ordered descending
select rating,
count(film_id) as tot_movies,
avg(length) as avg_length
from film
group by rating
order by tot_movies desc;

--find rental durations
select rental_duration,
count(*)
from film
group by rental_duration
order by rental_duration desc;

select *
from film
where length = (select min(length) from film)
order by rental_rate asc;

-- find avg rental rate based on movie rating, rounding rate int
select rating, 
round(avg(rental_rate),2) as avg_rate
from film
group by rating
order by avg_rate asc;

-- how much would it cost to replace all movies?
select sum(replacement_cost)
from film;

-- how much would it cost to replace all movies in each ratings category?
select rating,
sum(replacement_cost) as tot_cost
from film
group by rating
order by tot_cost asc;

-- longest movies in table ordered by cheapest rental rate
select *
from film
where length = (select max(length) from film)
order by rental_rate asc
limit 5;

-- Select count of actors first names in descending order
select first_name, count(*) as count
from actor
group by first_name
order by count desc;

-- Select the average duration of movies by rating
select rating, avg(length) as avg_length
from film
group by rating
order by avg_length desc;

-- Select top ten replace costs for the length of the movie
select replacement_cost, length
from film
group by length, replacement_cost
order by length desc
limit 10;

-- Select the count of countries
select count(*)
from country;

-- which countries have the most customers
select co.country,
count(c.customer_id) as num_cust
from
  customer c
join address a on c.address_id = a.address_id
join city as ci on a.city_id = ci.city_id
join country as co on ci.country_id = co.country_id
group by co.country
order by num_cust desc
limit 10;

--OR Marsha's

select country,
	count(distinct customer_id) customer_count
from customer cust
inner join address as a
	on cust.address_id=a.address_id
inner join city c
	on a.city_id=c.city_id
inner join country co
	on c.country_id=co.country_id
group by country
order by customer_count desc;

-- use all clauses!!
Select
	co.country,
	count(c.customer_id) as num_customers
from
	customer c
	join address a on c.address_id = a.address_id
	join city ci on a.city_id = ci.city_id
	join country co on ci.country_id = co.country_id
where
	co.country like 'U%'
group by
	co.country
having
	count(c.customer_id) > 1
order by
	num_customers desc
limit 3;

-- unique dates on which a movie was rented
select distinct
f.title, date (r.rental_date) as rental_date
from film f
join inventory i on i.film_id = f.film_id
join rental r on r.inventory_id = i.inventory_id
where f.title = 'ACADEMY DINOSAUR'
order by rental_date asc
limit 10;