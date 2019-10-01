--   Q1
-- 1.0/1.0 point (ungraded)
-- Find the names of all reviewers who rated Gone with the Wind.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select name
from Reviewer join
(select distinct rID
from Rating join (select mID 
from Movie
where title ="Gone with the Wind") using (mID))
using (rID)
