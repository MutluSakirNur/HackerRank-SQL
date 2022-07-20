SELECT * FROM(
SELECT N AS NUMBER,
(CASE 
WHEN N NOT IN(SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
WHEN P IS NULL THEN 'Root'
WHEN N IN(SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Inner'
END) AS NODE
FROM BST ) AS RESULT
ORDER BY NUMBER