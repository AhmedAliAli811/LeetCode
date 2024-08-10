# Write your MySQL query statement below

select wn.id
from Weather wn join Weather wprev
on DATEDIFF(wn.recordDate, wprev.recordDate) = 1
where wn.temperature > wprev.temperature 

