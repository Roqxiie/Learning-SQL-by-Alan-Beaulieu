#11-1
SELECT emp_id,
CASE
WHEN title LIKE '%President' OR title = 'Loan Manager'
OR title = 'Treasurer'
THEN 'Management'
WHEN title LIKE '%Teller' OR title = 'Operations Manager'
THEN 'Operations'
ELSE 'Unknown'
END
FROM employee;

#11-2
SELECT open_branch_id, COUNT(*)
SUM(CASE WHEN open_branch_id = 1 THEN 1 ELSE 0 END) AS branch_1,
SUM(CASE WHEN open_branch_id = 2 THEN 1 ELSE 0 END) AS branch_2,
SUM(CASE WHEN open_branch_id = 3 THEN 1 ELSE 0 END) AS branch_3,
SUM(CASE WHEN open_branch_id = 4 THEN 1 ELSE 0 END) AS branch_4
FROM account;
