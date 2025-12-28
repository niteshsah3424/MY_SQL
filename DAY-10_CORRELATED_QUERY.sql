#correlated sub-query
-- Some Important OPERATORS ARE:

-- 1.Case statement ( case 
			-- 		when condition then display
--                      when condition then display 
-- 					 else ---
--                      end)
-- Q1.WAQTD EMP DETAILS ALONG WITH TOTAL SAL (SAL+COMM)
SELECT EMP.*,CASE
             WHEN COMM IS NULL THEN SAL
             ELSE COMM+SAL
             END AS TOTAL_SAL
FROM EMP;          

-- Q2.WAQTD SAL>2000 THEN "FIRST GROUP"
--  SAL<2000 AND SAL>1000 THEN "SECOND GROUP"
-- ELSE "THIRD GROUP"

SELECT EMP.*,CASE
			 WHEN SAL>=2000 THEN 'FIRST_GROUP'
             WHEN SAL<2000 AND SAL>=1000 THEN 'SECOND_GROUP'
             ELSE 'THIRD_GROUP'
             END AS 'GROUPING'
FROM EMP;             


#2. ALL-->SUB-QUERY-->AND
#ALL--> ALL CONDITION WILL BE TRUE THEN RESULT WILL BE DISPLAY
#ANY--> ANY OF ONE WILL BE TRUE THAN RESULT WILL BE DISPALY


-- Q1.WAQTD DETAILS OF EMP WHERE SAL GREATER THEN ALL MANAGERS
SELECT * FROM EMP
WHERE SAL>ALL(SELECT SAL FROM EMP WHERE JOB='MANAGER');


            
-- 4.CORRELATED SUB-QUERY
-- The query in which  outer query dependent on inner query and inner query 
-- dependent on outer query
-- Called correlated sub-query.

-- Q1. waqtd 6TH highest salary from emp TABLE

SELECT DISTINCT SAL FROM EMP E1
WHERE (SELECT COUNT(DISTINCT SAL) FROM EMP E2 WHERE E1.SAL<=E2.SAL)=6;