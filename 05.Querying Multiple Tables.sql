-- 5.1 Fill in the blanks (denoted by <#>) for the following query to obtain the results that follow:
SELECT e.emp_id, e.fname, e.lname, b.name
FROM employee e INNER JOIN branch b 
ON e.assigned_branch_id = b.branch_id


-- 5.2 Write a query that returns the account ID for each nonbusiness customer (customer.cust_type_cd = 'I') with the customer’s federal ID (customer.fed_id) and the name of the product on which the account is based (product.name).
SELECT a.account_id, c.fed_id, p.name
FROM account a INNER JOIN customer c
ON a.cust_id = c.cust_id
INNER JOIN product p
ON a.product_cd = p.product_cd
WHERE customer.cust_type_cd = 'I'


-- 5.3 Construct a query that finds all employees whose supervisor is assigned to a different department. Retrieve the employees’ ID, first name, and last name.
SELECT e.emp_id, e.fname, e.lname
FROM employee e INNER JOIN employee s
ON e.superior_emp_id = s.emp_id
WHERE e.dept_id != s.dept_id;