# Write your MySQL query statement below

select name
from Employee
where id in (select e2.id
from Employee e1
left join Employee e2
on e1.managerId=e2.id
group by e2.id
having count(*)>=5);