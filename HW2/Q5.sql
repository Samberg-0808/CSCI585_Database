/*
Used Oracle https://livesql.oracle.com/
*/
SELECT S.SYMPTOM_ID
FROM SYMPTOM S
GROUP BY S.SYMPTOM_ID
HAVING COUNT(*) = (SELECT COUNT(DISTINCT EMP_ID) FROM SYMPTOM)
;