--ODEV-12

--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1) Film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

--2) Film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

--3) Film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

--4) Payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

--1)
SELECT COUNT(*) FROM film
WHERE length > 
(SELECT AVG(length) 
 FROM film);

--2)
SELECT COUNT(*) FROM film
WHERE rental_rate = 
(SELECT MAX(rental_rate) 
 FROM film);

--3)
SELECT title, rental_rate, replacement_cost FROM film
WHERE rental_rate = 
(SELECT MIN(rental_rate) FROM film)
AND replacement_cost = 
(SELECT MIN(replacement_cost) FROM film);

--4)
SELECT payment.customer_id, customer.first_name, customer.last_name, 
Count(payment.customer_id) FROM payment
LEFT JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id,customer.first_name, customer.last_name
ORDER BY Count(payment.customer_id) DESC 
LIMIT 5;

