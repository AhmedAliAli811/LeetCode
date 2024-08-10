/* Write your T-SQL query statement below */

select  teacher_id  , count(distinct t1.subject_id  ) as cnt
from Teacher t1 
group by t1.teacher_id  