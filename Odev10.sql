--ODEV-10

--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1) City tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini 
--birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.

--2) Customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki 
--first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.

--3) Customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki 
--first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.

--1)
SELECT payment.payment_id, customer.first_name, customer.last_name from city
LEFT JOIN country ON city.country_id = country.country_id;

--2)
SELECT payment.payment_id, customer.first_name, customer.last_name FROM customer
RIGHT JOIN payment ON payment.customer_id = customer.customer_id;

--3)
SELECT rental.rental_id, customer.first_name, customer.last_name FROM rental
FULL JOIN customer ON rental.customer_id = customer.customer_id;
