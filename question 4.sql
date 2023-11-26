---Question 4
---Which movies have been rented so far
SELECT f.title, COUNT(r.rental_id) AS rental_count
FROM film AS f
JOIN inventory AS i ON f.film_id = i.film_id
LEFT JOIN rental AS r ON r.inventory_id = i.inventory_id 
GROUP BY f.title 
HAVING COUNT(r.rental_id) > 0
ORDER BY rental_count ASC


---DG/C23/13997