--Bu çalışmamamızda şimdiye kadar üzerine konuştuğumuz tüm konuları 5 farklı 
--senaryo üzerinden tekrar etmeye çalıştık. Aşağıda ilgili senaryoları bulabilirsiniz.

--1)film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en 
--düşük 4 filmi sıralayınız.

--2)film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi 
--hangisidir?

--3)cutomer tablosunda en çok alışveriş yapan müşterinin adı nedir?

--4)category tablosundan kategori isimlerini ve kategori başına düşen film sayılarını 
--sıralayınız.

--5)film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan kç tane 
--film vardır?

--1)
SELECT title, length, replacement_cost FROM film
WHERE title LIKE 'K%'
ORDER BY length DESC, replacement_cost ASC
LIMIT 4;

--2)
SELECT rating, COUNT(*) FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1;

--3)
SELECT first_name, last_name, SUM(amount) AS total_amount_of_spending FROM payment AS p
INNER JOIN customer AS c ON p.customer_id = c.customer_id
GROUP BY first_name, last_name, p.customer_id
ORDER BY SUM(amount) DESC
LIMIT 1;

--4)
SELECT cat.name, COUNT(*) FROM category AS cat
INNER JOIN film_category AS fc ON fc.category_id = cat.category_id
GROUP BY fc.category_id, cat.name;

--5)
SELECT COUNT(*) FROM film
WHERE title ILIKE '%e%e%e%e%';


