/* Section 5: JOINS */
/* Challenge #1: California sales tax laws have changed and we need to alert our customres through email.
What are the emails of the customers who live in California? */
SELECT address.district, customer.email FROM customer
INNER JOIN address ON customer.address_id = address.address_id
WHERE district='California';

/* Challenge #2: A customer walks in and is a huge fan of the actor "Nick Whalberg" and wants to know which movies he is in. 
Get a list of all te movies "Nick Whalberg" has been in*/
SELECT film.title, actor.first_name, actor.last_name FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE first_name='Nick' AND last_name='Wahlberg'
