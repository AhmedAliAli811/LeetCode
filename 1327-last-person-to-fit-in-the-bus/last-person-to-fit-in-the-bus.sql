/* Write your T-SQL query statement below */
select top 1 person_name 
from (
select person_name  ,sum(weight) over (order by turn) AS CumulativeSum
from Queue 
) q
where q.CumulativeSum <= 1000
order by q.CumulativeSum desc


