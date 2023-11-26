---Question 17
---Show the profit of each of the stores 1 and 2
SELECT i.store_id, SUM(p.amount) AS profit
FROM inventory AS i 
JOIN rental AS r 
	ON i.inventory_id = r.inventory_id
JOIN payment AS p 
	ON p.rental_id = r.rental_id
WHERE i.store_id IN (1, 2)
GROUP BY i.store_id

---DG/C23/13997
