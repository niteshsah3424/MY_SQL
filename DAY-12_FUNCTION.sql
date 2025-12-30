
# function:input(char/string) --> process-->output
# concat,length , upper,lower ,reverse , substr--> substr(col,position,len)
select ename ,substr(ename,length(ename)/2,1)
from emp;

1.write a query to find the length of each employee's name

select ename , length(ename) from emp;



2.write a query to concatenate employee's name and job

select concat(ename,' ',job)
from emp;


3.write a query to reverse the ename
select ename , reverse(ename) from emp;

4.write a query to find the first and last letter of ename

select ename , concat(substr(ename,1,1),substr(ename,-1,1)) from emp;

5.write a query to find the palindrome ename
select ename from emp
where ename=reverse(ename);


6.write a query to find 
 i.the ename starts with  vowel letter.
 ii.the middle ename's letter  start with vowel letter


6.write a query as given scenario:
i.first letter of ename should be Capital letter
ii.last letter of ename should be Capital letter
iii.all middle letters should be small letter
iv.finally revere all ename col.

Output table:
ENAME      OUPUT
---------- -----------
SMITH      HtimS
ALLEN      NellA
WARD       DraW
JONES      SenoJ
MARTIN     NitraM
BLAKE      EkalB
CLARK      KralC
SCOTT      TtocS
KING       GniK
TURNER     RenruT
ADAMS      SmadA
JAMES      SemaJ
FORD       DroF
MILLER     RelliM

select ename , reverse(concat(upper(substr(ename,1,1)),
lower(substr(ename,2,length(ename)-2)),
upper(substr(ename , -1,1))))
from emp;