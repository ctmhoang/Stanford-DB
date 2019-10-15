-- Q2
--1/1 point (graded)
--For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.

--Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select H1.name, H1.grade, H2.name, H2.grade
from Likes, Highschooler H1, Highschooler H2
where H1.ID = ID1 
and H2.ID = ID2 
and H1.grade - H2.grade >= 2
