-- Find the titles of all movies that have no ratings. 
select title
from Movie M
where not exists (select * from Rating R where R.mID = M.mID) 
