/* Write your T-SQL query statement below */
select results from (
select top 1 name as results      
from Users u join MovieRating mr
on u.user_id = mr.user_id
group by u.user_id , u.name
order by count(mr.movie_id) desc , u.name asc
) r1
union all
select results from (
select  top 1 m.title as results      
from Movies m join MovieRating mr 
on m.movie_id = mr.movie_id
where month(created_at) = 2 and year(created_at) = 2020
group by m.movie_id , m.title
order by avg(rating * 1.0) desc , m.title asc ) r2