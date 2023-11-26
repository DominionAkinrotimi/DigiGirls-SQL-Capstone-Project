---Question 11
---Display the movies offered for rent in store_id  and not offered in store_id 2.
SELECT DISTINCT f.title, i.store_id
FROM film AS f
LEFT JOIN inventory AS i ON f.film_id = i.film_id
WHERE i.store_id = 1 AND f.film_id NOT IN (
    SELECT i2.film_id
    FROM inventory AS i2
    WHERE i2.store_id = 2
);
---DG/C23/13997