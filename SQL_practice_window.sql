SELECT * FROM SALES

--Find the running total of sales amounts for each employee, ordered by sale date.
SELECT EMPLOYEE_ID,SALE_AMOUNT,SUM(SALE_AMOUNT) OVER(PARTITION BY EMPLOYEE_ID ORDER BY SALE_DATE) 
AS TOTAL_AMOUNT
FROM SALES
--Calculate the rank of each sale amount within its employee’s sales, where the highest sale gets rank 1.
SELECT EMPLOYEE_ID,SALE_AMOUNT,RANK() OVER(PARTITION BY EMPLOYEE_ID ORDER BY SALE_AMOUNT DESC) RNK
FROM SALES
--Determine the moving average of sales amounts for each employee over a 2-day window.
SELECT EMPLOYEE_ID,SALE_AMOUNT,SALE_DATE, 
AVG(SALE_AMOUNT) OVER(
PARTITION BY EMPLOYEE_ID ORDER BY SALE_DATE
ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
)
FROM SALES

SELECT EMPLOYEE_ID,SALE_AMOUNT,SALE_DATE, 
AVG(SALE_AMOUNT) OVER(
PARTITION BY EMPLOYEE_ID ORDER BY SALE_DATE
ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING --calculates between current row and rows to the end in partition
) avg_last,
AVG(SALE_AMOUNT) OVER(PARTITION BY EMPLOYEE_ID ORDER BY SALE_DATE
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW  --calculates between current row and rows to the end in partition
) avg_first
FROM SALES


--Identify the highest sale amount and the lowest sale amount for each employee, and display these values.


SELECT EMPLOYEE_ID,MAX(SALE_AMOUNT) AS MAX_SALES,MIN(SALE_AMOUNT) AS MIN_SALES 
FROM SALES GROUP BY EMPLOYEE_ID

