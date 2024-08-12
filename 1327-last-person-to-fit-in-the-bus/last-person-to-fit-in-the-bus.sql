/* Write your T-SQL query statement below */
with cte as (
select * ,sum(weight) over (order by turn) AS CumulativeSum
from Queue 
)

select top 1 person_name  
from cte 
where CumulativeSum <=1000
order by CumulativeSum desc


