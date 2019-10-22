--  Q1
-- 1.0/1.0 point (ungraded)
-- For every situation where student A likes student B, but student B likes a different student C, return the names and grades of A, B, and C.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select H1.name, H1.grade, H2.name, H2.grade, H3.name, H3.grade
from Highschooler H1, Highschooler H2, Highschooler H3,
(select L2.ID1 as ID1, L2.ID2 as ID2 ,L1.ID2 as ID3
from Likes L1, Likes L2,
(
select ID2 as ID from Likes
intersect
select ID1 as ID from Likes
)
where ID = L1.ID1 and ID = L2.ID2 and L1.ID2 != L2.ID1)
where ID1 = H1.ID and ID2 = H2.ID and ID3 = H3.ID
