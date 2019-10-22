--  Q4
-- 1.0/1.0 point (graded)
-- Find all students who do not appear in the Likes table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select name ,grade
from Highschooler
where ID not in
(
    select ID1 as ID from Likes
    union
    select ID2 as ID from Likes
)
order by grade, name
