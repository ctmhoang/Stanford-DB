--  Q9
-- 1.0/1.0 point (graded)
-- Find the name and grade of all students who are liked by more than one other student.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite.

select name, grade
from Highschooler, 
(
select ID2, count(distinct ID1) as loved
from Likes
group by (ID2)
)
where ID = ID2 and loved > 1
