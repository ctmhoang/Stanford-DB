--  Q6
-- 1.0/1.0 point (ungraded)
-- For each rating that is the lowest (fewest stars) currently in the database, return the reviewer name, movie title, and number of stars.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select name, title, stars
from Rating Ra, Reviewer Re, Movie Mv
where stars is (select min(stars) from Rating) and Ra.rID =Re.rID and Mv.mID = Ra.mID
