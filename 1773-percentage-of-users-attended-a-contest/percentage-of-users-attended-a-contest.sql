/* Write your T-SQL query statement below */

select r.contest_id  , isnull(round(100.0 * count(distinct r.user_id) / (select count(user_id) from Users) , 2) , 0.00) as percentage 
from Register r 
group by r.contest_id 
order by percentage  desc , contest_id 