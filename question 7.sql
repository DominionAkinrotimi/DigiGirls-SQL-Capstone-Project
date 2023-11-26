---Question 7
---Display each movie and the number of times it got rented
SELECT f.title, COUNT(r.rental_id) AS rental_count
FROM film AS f 
JOIN inventory AS i ON f.film_id = i.film_id
JOIN rental AS r ON r.inventory_id = i.inventory_id
GROUP BY f.title 


---DG/C23/13997
