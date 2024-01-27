# Write your MySQL query statement below

select e.employee_id, e.name, count(m.employee_id) as reports_count, round(sum(m.age)/count(m.employee_id),0) as average_age
from Employees e
inner join Employees m
on e.employee_id=m.reports_to
group by m.reports_to
order by e.employee_id; 