---Question 12
---Display the movies offered for rent in any of the two stores 1 and 2
SELECT DISTINCT f.title, i.store_id
FROM film AS f
LEFT JOIN inventory AS i ON f.film_id = i.film_id
WHERE i.store_id IN (1, 2);

---DG/C23/13997
