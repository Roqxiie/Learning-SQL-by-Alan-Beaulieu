-- 4.1 Which of the transaction IDs would be returned by the following filter conditions? txn_date < '2005-02-26' AND (txn_type_cd = 'DBT' OR amount > 100)
SELECT txn_id
FROM transaction
WHERE txn_date < '2005-02-26' AND (txn_type_cd = 'DBT' OR amount > 100)


-- 4.2 Which of the transaction IDs would be returned by the following filter conditions? account_id IN (101,103) AND NOT (txn_type_cd = 'DBT' OR amount > 100)
SELECT txn_id
FROM transaction
WHERE account_id IN (101,103) AND NOT (txn_type_cd = 'DBT' OR amount > 100)


-- 4.3 Construct a query that retrieves all accounts opened in 2002.
SELECT account_id
FROM account
WHERE open_date BETWEEN '2002-01-01' AND '2002-12-31';


-- 4.4 Construct a query that finds all nonbusiness customers whose last name contains an a in the second position and an e anywhere after the a.
SELECT lname
FROM customer
WHERE cust_type_cd = 'I'
AND lname LIKE '_a%e%';