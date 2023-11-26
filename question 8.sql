---Question 8
---Show the first name and last name  and the number of films each actor acted in
SELECT a.first_name, a.last_name, COUNT(film_actor.film_id) AS Film_count
FROM actor AS a 
LEFT JOIN film_actor ON a.actor_id = film_actor.actor_id
GROUP BY a.first_name, a.last_name

---DG/C23/13997