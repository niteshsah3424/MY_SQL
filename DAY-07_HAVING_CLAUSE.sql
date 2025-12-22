day-07
question on having clause...

1.WAQTD Deptno AND NUMBER OF EMP WORKING IN EACH DEPT IF THERE ARE ATLEAST 2 CLERKS IN EACH DEPT
select deptno,count(deptno)
from emp
where job='clerk'
group by deptno
having count(deptno)>=2;

2.WAQTD DNO AND TOTAL SAALARY NEEDED TO PAY ALL EMP IN EACH DEPT
 IF THERE ARE ATLEAST 4 EMP IN EACH DEPT

select deptno, sum(sal) as total_salary
from emp
group by deptno
having count(deptno)>=4;

 3.WAQTD NUMBER OF EMP EARNING SAL MORE THAN 1200 IN EACH JOB AND 
THE TOTAL SAL NEEDED TO PAY EMP OF EACH JOB MUST EXCEES 3800

select job,count(job),sum(sal)
from emp
where sal>1200
group by job 
having sum(job)>3800;

4.WAQTD DEPTNO AND NUMBER OF EMP WORKING ONLY IF THERE ARE 2 EMP WORKING IN EACH DEPT AS MANAGER.
select deptno,count(deptno)
from emp
where job='manager'
group by deptno
having count(deptno)>=2;


5.WAQTD JOB AND MAX SAL OF EMP IN EACH JOB IF THE MAX SAL EXCEEDS 2600
select job, max(sal) as maximum_sal 
from emp
group by job
having max(Sal)> 2600;


6.WAQTD THE SALARIES WHICH ARE REPEATED IN EMP TABLE
select sal,count(sal)
from emp
group by sal
having count(sal)>=2;


7.WAQTD THE HIREDATE WHICH ARE DUPLICATED IN EMP TABLE
select hiredate ,count(hiredate)
from emp
group by hiredate
having count(hiredate)>=2;

8.WAQTD AVG SALARY OF EACH DEPT IF AVG SAL IS LESS THAN 3000
select deptno,avg(sal)
from emp
group by deptno
having avg(sal)<3000;


 -- 9.WAQTD DEPTNO IF THERE ARE ATLEAST 3 EMP IN EACH DEPT WHOSE NAME HAS CHAR 'A';
select deptno,count(deptno)
from emp
where ename like'%A%'
group by deptno
having count(deptno)>=3;

10.WAQTD MIN AND MAX SALARIES OF EACH JOB IF MIN SAL IS MORE THAN 1000 AND MAX SAL IS LESS THAN 5000
select job, min(sal),max(sal)
from emp
group by job
having min(sal)>1000 and max(Sal)<5000;



