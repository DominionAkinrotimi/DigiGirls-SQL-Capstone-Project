---Question 9
---Display the names of the actors that acted in more than 20 movies
SELECT a.first_name, a.last_name, COUNT(film_actor.film_id) AS Film_count
FROM actor AS a 
JOIN film_actor ON a.actor_id = film_actor.actor_id
GROUP BY a.first_name, a.last_name
HAVING COUNT(film_actor.film_id) > 20 
ORDER BY film_count ASC

---DG/C23/13997