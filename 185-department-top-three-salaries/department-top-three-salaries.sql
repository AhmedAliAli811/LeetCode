/* Write your T-SQL query statement below */
with cte as (
    select * , dense_rank() over (partition by departmentId order by salary desc) as rank
    from Employee
)
select d.name as Department , c.name as Employee  , c.salary as Salary 
from Department d join cte c 
on d.id = c.departmentId 
where rank < 4