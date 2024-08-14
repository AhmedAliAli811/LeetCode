/* Write your T-SQL query statement below */
with cte as (
    select visited_on, SUM(amount) AS amount
    from Customer
    group by visited_on)
select visited_on ,
 sum(amount) over (order by visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ) as amount ,
  round(avg(1.0 * amount) over (order by visited_on ROWS BETWEEN 6 PRECEDING AND CURRENT ROW ) , 2) as average_amount 
from cte c 
order by visited_on 
OFFSET 6 ROWS;
