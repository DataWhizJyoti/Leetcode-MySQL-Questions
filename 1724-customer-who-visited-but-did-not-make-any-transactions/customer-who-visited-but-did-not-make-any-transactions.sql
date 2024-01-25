# Write your MySQL query statement below

with cte as(
select v.customer_id, t.transaction_id
from Visits v
left join Transactions t
on v.visit_id=t.visit_id
)
select customer_id, count(*) as count_no_trans
from cte
where transaction_id is null
group by customer_id
order by count_no_trans;