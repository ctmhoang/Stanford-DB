--  Q2
-- 1/1 point (graded)
-- Insert 5-star ratings by James Cameron for all movies in the database. Leave the review date as NULL.
insert into
    Rating
select
    rID,
    mID,
    5,
    null
from
    Reviewer,
    Movie
where
    name = "James Cameron"
