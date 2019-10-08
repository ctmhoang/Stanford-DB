--  Q11
-- 1/1 point (ungraded)
-- Find the movie(s) with the lowest average rating. Return the movie title(s) and average rating. (Hint: This query may be more difficult to write in SQLite than other systems; you might think of it as finding the lowest average rating and then choosing the movie(s) with that average rating.)
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select title, stars
from Movie join
(
select mID , stars
from
    (
    select mID, avg(stars) as stars
    from Rating
    group by (mID)
    ) join
    (
    select min(stars) as stars
    from
        (
        select avg(stars) as stars
        from Rating
        group by (mID)
        )
    )
    using (stars)
)
using (mID)
