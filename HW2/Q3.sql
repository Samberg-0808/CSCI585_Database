/*
Used Oracle https://livesql.oracle.com/
*/
SELECT E.FLOOR_NUM
FROM EMPLOYEE E
JOIN COVID19TEST T ON E.EMP_ID = T.EMP_ID
WHERE T.TEST_RESULT = 'positive'
GROUP BY E.FLOOR_NUM
HAVING  COUNT(*) = (SELECT MAX(COUNT(*))
                    FROM EMPLOYEE EMP
                    JOIN COVID19TEST TE ON EMP.EMP_ID = TE.EMP_ID
                    WHERE TE.TEST_RESULT = 'positive'
                    GROUP BY EMP.FLOOR_NUM )
;