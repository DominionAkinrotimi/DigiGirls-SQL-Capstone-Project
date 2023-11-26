---Question 14
---Display the movie title for the most rented movie in the store with store_id 1.
SELECT f.title, COUNT(r.rental_id) AS rental_count
FROM film AS f
JOIN inventory AS i 
	ON f.film_id = i.film_id
JOIN rental AS r 
	ON i.inventory_id = r.inventory_id
WHERE i.store_id IN (1)
GROUP BY  f.title
ORDER BY rental_count DESC
LIMIT 1;


---DG/C23/13997