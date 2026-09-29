-- 6.1 
-- A = {L M N O P} B = {P Q R S T}
-- A union B
{L M N O P Q R S T}
-- A union all B
{L M N O P P Q R S T}
-- A intersect B
{P}
-- A except B
{L M N O }


-- 6.2 
SELECT  fname, lname
FROM individual 
UNION
SELECT  fname, lname
FROM employee

-- 6.3
SELECT fname, lname
FROM individual 
UNION ALL 
SELECT fname, lname
FROM employee
ORDER BY lname;