---Question 6
---Which customers have not rented any movies so far.
SELECT c.first_name,c.last_name
FROM customer AS c
LEFT JOIN rental AS r ON c.customer_id = r.customer_id
WHERE r.rental_id ISNULL;




---DG/C23/13997