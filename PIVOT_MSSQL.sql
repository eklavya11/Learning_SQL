--SELECT * FROM SALES_DATA

--PIVOT
--SYNTAX

--SELECT * FROM 
--(
--BASE QUERY
--)
--PIVOT
--(
--AGGREGATE FUNCTION
--FOR COLUMN_NAME IN('Jan-21','Feb-21','')
--)
-------------------------------------
-------------------------------------



--UPDATE SALES_DATA
--SET AMOUNT = REPLACE(AMOUNT,RIGHT(AMOUNT,3),'')

--UPDATE SALES_DATA
--SET AMOUNT = CONCAT(AMOUNT,'$')

--alter table alter column data type script
--ALTER TABLE SALES_DATA
--ALTER COLUMN AMOUNT VARCHAR(20)

--ALTER TABLE SALES_DATA
--ALTER COLUMN SALES_DATE DATE

--add column script
--ALTER TABLE SALES_DATA ADD Formatted_Amount VARCHAR(20);

WITH CUSTOMER_DETAILS AS(
SELECT * FROM
(
SELECT CUSTOMER_ID AS CUSTOMER,
FORMAT(SALES_DATE,'MMM-yy') AS SALES_DATE,
CAST(REPLACE(AMOUNT,'$','')AS INT) AS AMOUNT FROM SALES_DATA
) AS S_DATA
PIVOT
(
 SUM(AMOUNT)
 FOR SALES_DATE IN ([Jan-24],[Feb-24],[Mar-24],[Apr-24],[May-24],[Jun-24],[Jul-24],[Aug-24],[Sep-24],[Oct-24])
) AS PIVOT_DATA
UNION 
SELECT * FROM
(
SELECT 'TOTAL' AS CUSTOMER,
FORMAT(SALES_DATE,'MMM-yy') AS SALES_DATE,
CAST(REPLACE(AMOUNT,'$','')AS INT) AS AMOUNT FROM SALES_DATA
) AS S_DATA
PIVOT
(
 SUM(AMOUNT)
 FOR SALES_DATE IN ([Jan-24],[Feb-24],[Mar-24],[Apr-24],[May-24],[Jun-24],[Jul-24],[Aug-24],[Sep-24],[Oct-24])
) AS PIVOT_DATA
)
SELECT 
CUSTOMER,
CASE 
    WHEN ISNULL([Jan-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([Jan-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([Jan-24], 0) AS VARCHAR(10)) 
END AS [JAN-24],

CASE 
    WHEN ISNULL([Feb-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([Feb-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([Feb-24], 0) AS VARCHAR(10)) 
END AS [FEB-24],

CASE 
    WHEN ISNULL([Mar-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([Mar-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([Mar-24], 0) AS VARCHAR(10)) 
END AS [MAR-24],

CASE 
    WHEN ISNULL([Apr-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([Apr-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([Apr-24], 0) AS VARCHAR(10)) 
END AS [APR-24],

CASE 
    WHEN ISNULL([May-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([May-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([May-24], 0) AS VARCHAR(10)) 
END AS [MAY-24],

CASE 
    WHEN ISNULL([Jun-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([Jun-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([Jun-24], 0) AS VARCHAR(10)) 
END AS [JUN-24],

CASE 
    WHEN ISNULL([Jul-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([Jul-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([Jul-24], 0) AS VARCHAR(10)) 
END AS [JUL-24],

CASE 
    WHEN ISNULL([Aug-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([Aug-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([Aug-24], 0) AS VARCHAR(10)) 
END AS [AUG-24],

CASE 
    WHEN ISNULL([Sep-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([Sep-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([Sep-24], 0) AS VARCHAR(10)) 
END AS [SEP-24],

CASE 
    WHEN ISNULL([Oct-24], 0) < 0 THEN 
        CONCAT('(', CAST((ISNULL([Oct-24], 0) * -1) AS VARCHAR(10)), ')')
    ELSE 
        CAST(ISNULL([Oct-24], 0) AS VARCHAR(10)) 
END AS [OCT-24],
CASE WHEN CUSTOMER = 'TOTAL' THEN ''
ELSE
CAST(SUM(
    ISNULL([Jan-24], 0) +
    ISNULL([Feb-24], 0) +
    ISNULL([Mar-24], 0) +
    ISNULL([Apr-24], 0) +
    ISNULL([May-24], 0) +
    ISNULL([Jun-24], 0) +
    ISNULL([Jul-24], 0) +
    ISNULL([Aug-24], 0) +
    ISNULL([Sep-24], 0) +
    ISNULL([Oct-24], 0)
)AS VARCHAR(10)) END AS TOTAL

FROM CUSTOMER_DETAILS
group by CUSTOMER,
[Jan-24],[Feb-24],[Mar-24],[Apr-24],[May-24],[Jun-24],[Jul-24],[Aug-24],[Sep-24],[Oct-24]



--important while using pivot
--base query should have atleast 3 columns(can have more columns)
--first column should be unique identifier
--second column should be the columns that values have to transform into
--third column will have the values
