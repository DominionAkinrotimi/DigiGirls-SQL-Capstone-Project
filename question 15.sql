---Question 15
---How many movies are not offered for rent in the stores yet. There are two stores only 1 and 2.
SELECT f.title, COUNT(f.title) AS movie_count
FROM film AS f
WHERE f.film_id NOT IN (
    SELECT DISTINCT i.film_id
    FROM inventory AS i
    WHERE i.store_id IN (1, 2)
)
GROUP BY f.title;

---DG/C23/13997



/*
SELECT f.title, COUNT(r.rental_id) AS rental_count
FROM film AS f
LEFT JOIN inventory AS i 
	ON f.film_id = i.film_id
LEFT JOIN rental AS r 
	ON i.inventory_id = r.inventory_id
WHERE r.rental_id ISNULL AND i.store_id IN (1,2)
GROUP BY f.title
*/
