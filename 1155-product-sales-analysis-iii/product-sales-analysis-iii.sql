/* Write your T-SQL query statement below */

select s.product_id, s.year as first_year , s.quantity , s.price 
from Sales s join 
(select product_id, min(year) as first_year from Sales 
    group by product_id
    ) s2
on s.product_id = s2.product_id and s.year = s2.first_year 