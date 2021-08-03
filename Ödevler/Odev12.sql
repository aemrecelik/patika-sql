SELECT * FROM film WHERE film.length> (SELECT AVG(film.length) FROM film);
SELECT COUNT(*) FROM film WHERE rental_rate=(SELECT MAX(rental_rate) FROM film);
SELECT * FROM film WHERE rental_rate=(SELECT MIN(rental_rate) FROM film) AND replacement_cost=(SELECT MIN(replacement_cost) FROM film);
SELECT payment.customer_id , customer.first_name ,customer.last_name, COUNT(payment.customer_id) as alisverisSayisi FROM payment
    JOIN customer ON payment.customer_id=customer.customer_id
    GROUP BY payment.customer_id, customer.first_name, customer.last_name
    ORDER BY alisverisSayisi DESC; 
