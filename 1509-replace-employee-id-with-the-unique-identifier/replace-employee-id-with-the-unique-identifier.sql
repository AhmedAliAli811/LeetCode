# Write your MySQL query statement below
 
Select unique_id , name
From EmployeeUNI eu right outer join Employees e on eu.id = e.id 