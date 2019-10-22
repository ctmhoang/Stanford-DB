--  Q2
-- 1.0/1.0 point (ungraded)
-- Find those students for whom all of their friends are in different grades from themselves. Return the students' names and grades.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select name, grade
from Highschooler
where ID not in
(
select H1.ID
from Friend , Highschooler H1, Highschooler H2
where ID1 = H1.ID and ID2 = H2.ID and H2.grade = H1.grade 
)
