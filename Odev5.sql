--ODEV-5

--Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

--1) Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 
--5 filmi sıralayınız.

--2) Film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) 
--ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.

--3) Customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 
--olmak koşuluyla ilk 4 veriyi sıralayınız.

--1)
SELECT title FROM film 
WHERE title LIKE '%n'
ORDER BY LENGTH DESC LIMIT 5;

--2)
SELECT title FROM film 
WHERE title LIKE '%n'
ORDER BY LENGTH offset 5 LIMIT 5;

--3)
SELECT*FROM Customer
WHERE store_id = 1 
ORDER BY last_name DESC lIMIT 4;
