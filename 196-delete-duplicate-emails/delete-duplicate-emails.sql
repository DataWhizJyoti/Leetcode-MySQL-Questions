# Write your MySQL query statement below

Delete t1 
from Person t1, Person t2
where t1.Id>t2.Id AND t1.Email=t2.Email