WITH RECURSIVE PRINT_TO_N AS(
SELECT 0 AS NUM 
UNION ALL
SELECT NUM + 1
FROM PRINT_TO_N 
--WHERE NUM<200
)
--SELECT * FROM PRINT_TO_N LIMIT 100
SELECT NUM,COALESCE(SUM(NUM) OVER(ORDER BY NUM ROWS BETWEEN UNBOUNDED PRECEDING AND 1 PRECEDING),0)
FROM(SELECT * FROM PRINT_TO_N LIMIT 1000)A
