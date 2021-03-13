
--- Sum the each payment for each user ---
SELECT customer_name, count(*)
FROM payments
GROUP BY customer_name
ORDER BY count(*) DESC;

--- Sum the payment amount for each month ---
SELECT sum(amount), EXTRACT(year from processed_at) as year, EXTRACT(month from processed_at) as month
FROM payments
GROUP BY month, year
ORDER BY sum(amount) DESC;

--- Sum the payment amounts for each month for each user ---
SELECT customer_name, sum(amount),  EXTRACT(year from processed_at) as year, EXTRACT(month from processed_at) as month
FROM payments
GROUP BY customer_name, month, year
ORDER BY customer_name DESC;

--- Find the largest single user payments for each month ---
SELECT max(amount), year, month
FROM (
    SELECT customer_name, sum(amount) as amount, EXTRACT(year from processed_at) as year, EXTRACT(month from processed_at) as month
    FROM payments
    GROUP BY customer_name, month, year
) AS monthly_sums
GROUP BY year, month;



/*
   Transactions
*/
BEGIN TRANSACTION;
UPDATE balances SET balances = balances - 100 WHERE username = 'Jack';
UPDATE balances SET balances = balances + 100 WHERE username = 'Mike';
COMMIT;
