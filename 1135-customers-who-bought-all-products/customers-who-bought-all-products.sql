/* Write your T-SQL query statement below */

with cte as (
    select count (*) as total_products
    from Product 
    )
select customer_id
from Customer 
group by customer_id 
having count(distinct product_key ) = ( select total_products from cte);