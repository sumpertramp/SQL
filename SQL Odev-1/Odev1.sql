SELECT title, description FROM film;

SELECT lenght FROM film
WHERE lenght>='60' AND length<'75'

SELECT rental_rate, replacement_cost FROM film   
WHERE rental_rate = '0.99' AND replacament_cost = '12.99' OR replecament_cost = '28.99'

SELECT *FROM customer

SELECT firs_name, last_name FROM customer
WHERE first_name = 'Mary'

SELECT length, rental_rate FROM film  
WHERE length<'20' AND (rental_rate != '2.99' OR rental_rate != '4.99')
