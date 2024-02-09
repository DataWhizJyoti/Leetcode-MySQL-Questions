# Write your MySQL query statement below

select seat_id
from(select lag(seat_id)over() as prev_id, seat_id, lead(seat_id)over() as next_id
from Cinema
where free=1) temp
where seat_id-prev_id=1 or next_id-seat_id=1;