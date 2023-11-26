---Question 16
---Show the number of rented movies under each rating.
SELECT f.rating, COUNT(r.rental_id) AS movie_count
FROM film AS f
LEFT JOIN inventory AS i ON f.film_id = i.film_id
LEFT JOIN rental AS r ON i.inventory_id = r.inventory_id
GROUP BY f.rating


---DG/C23/13997

