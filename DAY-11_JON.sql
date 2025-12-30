
Join:
There are 2 process of join the table
i.By using set operators:

Here combination is done according to rows wise.
1.union: only unique records
2.union all : both unique and duplicate records
3.intersect : matching records in both table 
4.minus : showing only left side table records

ii. Type join
Here combination is done according to columns wise

1.Self join 2. Inner join 3. Left Join 4.Right join 5.full join
	6. Left anti-join 7. Right anti-join 8.Full anti-join 
9.Cross join 10.Natural join 

1.Self join:
Syntax:
Select * from A join A1
On A.key=A1.key;

2.Inner join :
Syntax:
Select * from A/B inner join B/A
On A.key=B.key;


3.Left join:
Syntax:
Select * from A left join B
On A.key=B.key;


4.Right join:

Syntax:
Select * from A right join B
On A.key=B.key;


5.Full join:

Syntax:
Select * from A full join B
On A.key=B.key;


6.Left anti-join:

Syntax:
Select * from A left join B
On A.key=B.key
Where B.key is null;


7.Right anti-join:

Syntax:
Select * from A right join B
On A.key=B.key
Where A.key is null;


8.Full anti - join:

Syntax:
Select * from A full join B
On A.key=B.key
Where A.key is null or B.key is null;


9.Cross join:
Syntax:
Select * from A  cross join B;


10.Natural Join:

Syntax:
Select * from A  natural join B;