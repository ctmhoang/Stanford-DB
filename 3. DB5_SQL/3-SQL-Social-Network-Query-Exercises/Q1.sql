-- Q1
-- 1/1 point (graded)
-- Find the names of all students who are friends with someone named Gabriel.

Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 
select H2.name
from Friend, Highschooler H1, Highschooler H2
where H1.name = 'Gabriel' and H1.ID = ID1 and H2.ID = ID2
