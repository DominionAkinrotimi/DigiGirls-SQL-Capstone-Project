---QUESTION 1
---Display the customer names that share the address (e.g. husband and wife).
SELECT a.address, c.first_name, c.last_name
FROM customer AS c
JOIN address AS a ON c.address_id = a.address_id
GROUP BY a.address, c.first_name, c.last_name
HAVING COUNT(c.customer_id) > 1;


---DG/C23/13997