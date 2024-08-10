/* Write your T-SQL query statement below */

select p.project_id  , isnull( round (avg(e.experience_years * 1.0) , 2) , 0) as average_years 
from Project p left join Employee e 
on p.employee_id = e.employee_id 
group by p.project_id  