/* Write your T-SQL query statement below */
select m.employee_id , m.name , count(e.reports_to ) as reports_count , round(avg(e.age * 1.000) , 0) as average_age 
from Employees e join Employees m
on e.reports_to  = m.employee_id 
group by m.employee_id , m.name
order by m.employee_id
