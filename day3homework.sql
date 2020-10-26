--Question 1-- 



SELECT *

FROM address

SELECT * 
FROM customer;

SELECT first_name, district, address.address_id
FROM address
JOIN customer 
ON customer.address_id - address.address_id
WHERE district = "TEXAS";

----Question 2---- X

SELECT * 
FROM payment;

SELECT CONCAT(first_name, '', last_name) as full_name, amount 
FROM customer
JOIN payment 
ON customer.customer_id = payment.customer_id
WHERE amount > 6.99
ORDER BY full_name 

----Question 3------ 

SELECT first_name, last_name
FROM customer 
WHERE customer_id IN(
FROM payment
GROUP BY customer_id 
HAVING SUM(amount) > 175
);


----Question 4-----

SELECT first_name, last_name
FROM customer 
JOIN address
ON city_city.id = address.city_id
JOIN city
ON city_city.id = address.city_id
JOIN country
ON country.coutry_id = city.country_id
WHERE country  'Nepal';

----Question 5-----

SELECT staff_id, first_name, last_name, COUNT(*)
FROM payment;
JOIN staff
ON staff.staff_id = payment.staff_id
GROUP BY staff.staff_id;

----Question 6-----X

SELECT rating, COUNT(*)
FROM film
GROUP BY rating 
ORDER BY COUNT(*);

----Question 7----

SELECT * 
FROM payment;

SELECT * 
FROM payment;
WHERE amount > 6.99
GROUP BY customer_id
HAVING COUNT(*) = 1;









