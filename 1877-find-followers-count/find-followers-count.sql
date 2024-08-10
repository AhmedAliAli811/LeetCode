/* Write your T-SQL query statement below */

select user_id , count(follower_id ) as followers_count
from Followers f 
group by user_id     