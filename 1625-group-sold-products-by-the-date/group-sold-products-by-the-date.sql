/* Write your T-SQL query statement below */
select sell_date , count(distinct product) as num_sold , string_agg(product , ',') as products 
from (select distinct * from activities) temp
group by sell_date
