---Question 13
---Display the movie titles of those movies offered in both stores at the same time.

SELECT DISTINCT f.title
FROM film AS f
INNER JOIN inventory AS i1 ON f.film_id = i1.film_id AND i1.store_id = 1
INNER JOIN inventory AS i2 ON f.film_id = i2.film_id AND i2.store_id = 2;


---DG/C23/13997