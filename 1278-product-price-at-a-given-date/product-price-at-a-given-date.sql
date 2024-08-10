/* Write your T-SQL query statement below */
with first_price as (
    select product_id, max(change_date) as max_change_date
    from Products 
    where change_date <= '2019-08-16'
    group by product_id 
)
select p1.product_id, 10 as price
from Products p1
group by p1.product_id
having min(p1.change_date) > '2019-08-16'
union
select p.product_id, p.new_price as price
from Products p join first_price fp
on p.product_id = fp.product_id and p.change_date = fp.max_change_date;
