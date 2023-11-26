---QUESTION 2
---What is the name of the customer who made the highest total payments.

SELECT c.first_name, c.last_name
FROM customer AS c
WHERE c.customer_id = (
    SELECT p.customer_id 
    FROM payment AS p
    GROUP BY p.customer_id
    ORDER BY SUM(p.amount) DESC 
    LIMIT 1
);
---DG/C23/13997


/*
SELECT c.first_name, c.last_name, (
    								SELECT SUM(p.amount)
    								FROM payment AS p
    								WHERE p.customer_id = c.customer_id
									) AS max_payment_amount
FROM customer AS c
WHERE c.customer_id = (
    					SELECT p.customer_id
    					FROM payment AS p
    					GROUP BY p.customer_id
    					ORDER BY SUM(p.amount) DESC
    					LIMIT 1
						);
*/
