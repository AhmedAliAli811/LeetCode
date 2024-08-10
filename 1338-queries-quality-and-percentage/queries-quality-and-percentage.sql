/* Write your T-SQL query statement below */

select query_name  , round( sum(rating * 1.0/ position *1.0) / count(position ) , 2) as quality  
,
round(count(case when rating<3 then 1 else NULL end)*100.00/count(*), 2) as poor_query_percentage 
  
from Queries
group by query_name 
having query_name
is not null