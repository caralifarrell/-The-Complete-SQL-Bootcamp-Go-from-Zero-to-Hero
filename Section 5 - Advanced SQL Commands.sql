/* Section 5: Advanced SQL Commands */
/* Challenge #1: During which months did payments occur? 
Format your answer to return back the full month name. */

SELECT TO_CHAR(payment_date, 'MONTH') AS month FROM payment
GROUP BY month;

/* Challenge #2: How many payments occured on a Monday? */
SELECT count(payment_id) FROM payment
WHERE (TO_CHAR(payment_date,'FMDay'))='Monday'

/* Alternative solution:
WHERE EXTRACT(dow, FROM payment_date)=1 */