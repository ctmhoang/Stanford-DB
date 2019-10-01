--  Q7
-- 1.0/1.0 point (ungraded)
-- List movie titles and average ratings, from highest-rated to lowest-rated. If two or more movies have the same average rating, list them in alphabetical order.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select title, avg(stars) as avgStars
from Rating join Movie using (mID)
group by (mID)
order by avgStars desc, title asc;
