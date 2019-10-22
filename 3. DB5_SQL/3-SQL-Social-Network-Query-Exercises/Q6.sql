--  Q6
-- 1.0/1.0 point (graded)
-- Find names and grades of students who only have friends in the same grade. Return the result sorted by grade, then by name within each grade.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select name ,grade
from Highschooler
where ID not in 
(
    select H1.ID
    from Friend, Highschooler H1, Highschooler H2
    where H1.ID = ID1 and H2.ID = ID2 and H1.grade <> H2.grade
)
order by grade, name
