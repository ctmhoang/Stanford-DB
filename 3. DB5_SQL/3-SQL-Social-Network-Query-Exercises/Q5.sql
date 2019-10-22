--  Q5
-- 1.0/1.0 point (graded)
-- For every situation where student A likes student B, but we have no information about whom B likes (that is, B does not appear as an ID1 in the Likes table), return A and B's names and grades.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select H1.name, H1.grade, H2.name, H2.grade
from Highschooler H1, Highschooler H2, Likes L1,
(
    select ID2 as ID from Likes
    except
    select ID1 as ID from Likes
) Temp
where L1.ID2 = Temp.ID and L1.ID1 = H1.ID and Temp.ID = H2.ID
