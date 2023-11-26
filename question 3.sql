---QUESTION 3
---What is the movie(s) that was rented the most

SELECT f.film_id, f.title, COUNT(r.rental_id) AS rental_count
FROM film AS f
JOIN inventory AS i 
	ON f.film_id = i.film_id
JOIN rental AS r 
	ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title
ORDER BY rental_count DESC
LIMIT 1;
---DG/C23/13997



/*
SELECT column_name
FROM information_schema.columns
WHERE table_name = 'inventory';
*/