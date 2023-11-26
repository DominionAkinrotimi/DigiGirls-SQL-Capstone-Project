---Question 10
---For all the movies rated "PG" show me the movie and the number of times it got rented
SELECT f.title, COUNT(r.rental_id) AS rental_count, f.rating
FROM film AS f 
JOIN inventory AS i ON f.film_id = i.film_id
JOIN rental AS r ON r.inventory_id = i.inventory_id
WHERE f.rating = 'PG'
GROUP BY f.title, f.rating

---DG/C23/13997
