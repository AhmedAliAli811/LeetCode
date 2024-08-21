/* Write your T-SQL query statement below */
with cte as (
    select tiv_2016 ,
            count (*) over (partition by tiv_2015 ) as tiv_count ,
            count(*) over (partition by lat,lon) as loc_count 
    from Insurance
)
select round(sum(1.0 * tiv_2016) , 2) as tiv_2016 
from cte where tiv_count > 1 and loc_count = 1