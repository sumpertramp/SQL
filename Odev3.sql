--ODEV-3

--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1) Country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri 
--ile başlayıp 'a' karakteri ile sonlananları sıralayınız.

--2) Country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden
-- oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.

--3) Film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da 
--küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.

--4) Film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan 
--ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

--1)
SELECT country FROM countyr
WHERE country LIKE 'A%a';

--2)
SELECT country FROM countyr
WHERE country LIKE '_____%n';

--3)
SELECT title FROM film
WHERE title LIKE '%T%T%T%T%';

--4)
SELECT * FROM film   
WHERE title LIKE 'C%' AND LENGHT>90 AND rental_rate =2.99
