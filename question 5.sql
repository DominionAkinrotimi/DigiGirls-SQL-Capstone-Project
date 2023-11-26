---Question 5
---Which movies have not been rented so far
SELECT f.title
FROM film AS f
LEFT JOIN inventory AS i ON f.film_id = i.film_id
LEFT JOIN rental AS r ON r.inventory_id = i.inventory_id 
WHERE r.inventory_id ISNULL


---DG/C23/13997

