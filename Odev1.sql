--ODEV-1

--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1) Film tablosunda bulunan title ve description sütunlarındaki verileri sıralayınız

--2) Film tablosunda bulunan tüm sütunlardaki verileri film uzunluğu (length) 60 dan büyük VE 75 ten küçük olma koşullarıyla sıralayınız.

--3) Film tablosunda bulunan tüm sütunlardaki verileri rental_rate 0.99 VE replacement_cost 12.99 VEYA 28.99 olma koşullarıyla sıralayınız.

--4) Customer tablosunda bulunan first_name sütunundaki değeri 'Mary' olan müşterinin last_name sütunundaki değeri nedir?

--5) Film tablosundaki uzunluğu(length) 50 ten büyük OLMAYIP aynı zamanda rental_rate değeri 2.99 veya 4.99 OLMAYAN verileri sıralayınız.


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
