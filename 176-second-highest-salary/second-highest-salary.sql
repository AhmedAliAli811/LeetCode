/* Write your T-SQL query statement below */
with cte as (
    select * , dense_rank() over (order by salary desc) as rank
    from Employee 
     )
    select max(salary) as SecondHighestSalary 
    from cte
    where rank = 2