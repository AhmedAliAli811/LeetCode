/* Write your T-SQL query statement below */
select class
from Courses c 
group by class
having count(student) >= 5 