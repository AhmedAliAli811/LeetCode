# Write your MySQL query statement below

select s.name
from Employee e join Employee s
on s.id = e.managerId 
group by s.id 
having count(s.id) >= 5