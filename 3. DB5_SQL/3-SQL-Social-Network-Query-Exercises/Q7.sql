--  Q7
-- 1.0/1.0 point (graded)
-- For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select H1.name, H1.grade, H2.name, H2.grade, H3.name, H3.grade
from Highschooler H1, Highschooler H2, Highschooler H3,
(
    select F1.ID1 as ID1, F2.ID1 as ID2, F1.ID2 as ID3
    from Friend F1 , Friend F2, (
        select ID1, ID2 from Likes
        except
        select ID1, ID2 from Friend
        ) Pairs
    where Pairs.ID1 = F1.ID1 and Pairs.ID2 = F2.ID1 and F1.ID2 = F2.ID2
)
where H1.ID = ID1 and H2.ID = ID2 and H3.ID = ID3
