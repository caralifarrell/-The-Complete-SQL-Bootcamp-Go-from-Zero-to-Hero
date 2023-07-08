/* Section 2: SQL Statement Fundamentals */

/* Challenge: SELECT */
/* We want to send out a promotional email to our existing customers.
Use a SELECT statement to grab the first and last names of every customer and their email addresses. */
SELECT first_name, last_name, email FROM customer;

/* Challenge: SELECT DISTINCT */
/* An Australian visitor isn't familiar with MPAA movie ratings (e.g. PG< PG-13, R, etc.)
We want to know the types of ratings we have in our database.
What ratings fo we have available? */
SELECT DISTINCT rating FROM film;

/* Challenge: SELECT WHERE */
/* Challenge #1: A customer forgot their wallet at our store! 
We need to track down their email to inform them.
What is the email for the customer with the name Nancy Thomas? */
SELECT email FROM customer
WHERE first_name='Nancy' AND last_name='Thomas';

/* Challenge #2: A customer wants to know what the movie "Outlaw Hanky" is about.
Could you give them the description for the movie "Outlaw Hanky"? */
SELECT description FROM film
WHERE title='Outlaw Hanky';

/* Challenge #3: A customer is late on their movie return, and we've mailed them a letter 
to their address at '259 Ipoh Drive.' We should also call them on the phone to let them know.
Can you get the phone number for the customer who lives at '259 Ipoh Drive'?*/
SELECT phone FROM address
WHERE address='259 Ipoh Drive';

/* Challenge: ORDER BY */
/* Challenge #1: We want to reward our first 10 paying customers.
What are the customer IDs of the first 10 customers who created a payment?*/
SELECT customer_id FROM payment
WHERE amount!=0
ORDER BY payment_date ASC
LIMIT 10;

/* Challenge #2: A customer wants to rent a video to watch over their short lunch break.
What are the titles of the 5 shortest (in length of runtime) moives? */
SELECT title,length FROM film
ORDER BY length ASC
LIMIT 5;

/* Bonus Question: If the previous customer can watch any movie that is 50 min or less in run time, 
how many options does she have?*/
SELECT COUNT(title) FROM film
WHERE length <=50;

/* General Challenge */
/* How many payment transactions were greater than $5.00? */
SELECT COUNT(payment_id) FROM payment
WHERE amount > 5.00;

/* How many actors have a first name that starts with the letter P? */
SELECT COUNT(actor_id) FROM actor
WHERE first_name LIKE 'P%';

/* How many unique districts are our customers from? */
SELECT COUNT(DISTINCT(district)) FROM address;

/* Retrieve the list of names for those distinct districts from the previous question */
SELECT DISTINCT(district) FROM address
ORDER BY district;

/* How many films have a rating R and a replacement cost between $5 and $15? */
SELECT COUNT(film_id) FROM film
WHERE rating='R' AND replacement_cost BETWEEN 5 AND 15;

/* How many films have the word Truman somewhere in the title? */
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';