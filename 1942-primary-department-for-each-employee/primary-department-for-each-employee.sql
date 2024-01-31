# Write your MySQL query statement below

select employee_id, department_id
from (select employee_id, department_id,primary_flag, 
    count(department_id)over(partition by employee_id)as count_department
    from Employee
) temp
where count_department=1 or primary_flag='Y'
group by employee_id;