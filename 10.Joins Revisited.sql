# 10.1
SELECT  p.product_cd, a.account_id, a.cust_id, a.avail_balance
FROM product p LEFT OUTER JOIN account a
ON p.product_cd = a.product_cd;


#10.2
SELECT  p.product_cd, a.account_id, a.cust_id, a.avail_balance
FROM product p RIGHT OUTER JOIN account a
ON p.product_cd = a.product_cd;


#10.3
SELECT a.account_id, a.product_cd,
i.fname, i.lname, b.name
FROM account a LEFT OUTER JOIN business b
ON a.cust_id = b.cust_id
LEFT OUTER JOIN individual i
ON a.cust_id = i.cust_id;


