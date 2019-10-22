--  Q3
-- 1.0/1.0 point (ungraded)
-- What is the average number of friends per student? (Your result should be just one number.)
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select (cast(sum(friends) as double)/ count(ID1))
from
(
select ID1 ,count(ID2) as friends
from Friend
group by (ID1)
)
