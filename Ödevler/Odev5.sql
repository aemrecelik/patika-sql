SELECT * FROM film WHERE title LIKE '%n' ORDER BY film.length DESC LIMIT 5;
SELECT * FROM film WHERE title LIKE '%n' ORDER BY film.length ASC LIMIT 5 OFFSET 5;
SELECT * FROM customer WHERE store_id=1 ORDER BY last_name DESC LIMIT 4;