/* Write your T-SQL query statement below */

with first_day as (
    select player_id  , min(event_date) as first    
    from Activity a1 
    group by a1.player_id
), second_day as (
    select count(a2.player_id) as num
    from first_day f join Activity a2 on f.player_id = a2.player_id 
    where datediff(day, first, a2.event_date) = 1
)
select  
round(s.num * 1.0 / 
    (select count(distinct player_id) from activity), 2)
    as fraction
from second_day s