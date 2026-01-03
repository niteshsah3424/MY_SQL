

-- Window function:
  The function which is used for Row Level Calculation.
   select ename,job,deptno , 
  sum(sal) over(partition by deptno)  from emp;


   Syntax of window function:
   Window function + over(partition clause  /order clause  )

-- Second part:
  1.partition by:
  It is similar to group by clause
-- Eg:
  Select  job,
  sum(sal) over(partition by job)
   From emp;

-


-- 2.Order by:
-- It is used to sort the data
-- Within a window either ascending or 
-- descending order.
-- It is required in rank function



-- First part
-- Window function:

-- 1.Aggregate function: 
-- Count() , sum() , avg() , min(),max()
-- Syntax:
-- Window function + over(partition clause  /order clause  )
-- 	• Here partition and order by clause are optional
-- 	• Need to pass the parameter
-- select sal,count(sal) over(partition by sal order by sal desc)
-- from emp;
-- select ename , job,deptno,
-- min(sal) over(),max(sal) over() , avg(sal)over(),
-- max(sal) over(partition by deptno),
-- min(sal) over(partition by deptno)
-- from emp;



-- 2.Rank function:
-- Row_number() , rank() , dense_rank(), ntile(n)
-- Syntax:
-- Window function + over(partition clause  /order clause  )
-- 	• Here partition by clause are optional but order by clause is compulsory
-- 	
-- 	• No need to pass the parameter except ntile() function


-- i.row_number():
-- 	• Assign a unique number to each row
-- 	• It doesn't handle ties.
-- 	• It doesn't leave gap

-- select emp.*,
-- row_number() over(order by empno)
--  from emp;
 
-- Eg:
-- Sales        ranking
-- 100            1
-- 80             2
-- 80             3
-- 50             4
-- 20             5

-- ii. Rank()
-- 	• Assign a rank to each row
-- 	• It handles ties.
-- 	• It leaves gap

-- Eg:
-- Sales       rank
-- 100           1
-- 80            2
-- 80            2
-- 50            4
-- 20            5


-- iii. Dense_rank()
-- 	• Assign a rank to each row
-- 	• It handles ties.
-- 	• It doesn't leave gap

-- Eg:
-- Sales         rank
-- 100            1
-- 80             2
-- 80             2
-- 50             3
-- 20             4

-- select emp.*,
-- row_number() over(order by sal) as ranking1,
-- rank() over(order by sal) as ranking2,
-- dense_rank() over(order by sal) as ranking3
-- from emp;

-- iv. ntile() 

-- select emp.*,
-- ntile(6) over(order by empno)
-- from emp;