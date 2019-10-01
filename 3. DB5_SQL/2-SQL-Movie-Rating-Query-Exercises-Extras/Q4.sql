--  Q4
-- 1.0/1.0 point (ungraded)
-- Find the titles of all movies not reviewed by Chris Jackson.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select title
from Movie
where mID not in(select distinct mID
from Rating join Reviewer using (rID)
where name = "Chris Jackson")
