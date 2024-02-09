# Write your MySQL query statement below

select distinct num as ConsecutiveNums
from(
select id, ifnull(lag(num)over(),0) as prev, num, 
ifnull(lead(num)over(),0) as next
from Logs ) temp
where prev=num and num=next;

