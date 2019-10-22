--  Q8
-- 1.0/1.0 point (graded)
-- Find the difference between the number of students in the school and the number of different first names.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select (count(ID)- count(distinct name)) as diff
from Highschooler
