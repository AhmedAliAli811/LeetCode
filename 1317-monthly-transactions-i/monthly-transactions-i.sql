/* Write your T-SQL query statement below */
SELECT FORMAT(trans_date, 'yyyy-MM') AS month , country , count(*) as trans_count , 
sum(case when state = 'approved' then 1 else 0 end) as approved_count , sum(amount) as trans_total_amount , sum(CASE WHEN state = 'approved' then amount else 0 END) as approved_total_amount    
from Transactions 
group by FORMAT(trans_date, 'yyyy-MM')  , country 