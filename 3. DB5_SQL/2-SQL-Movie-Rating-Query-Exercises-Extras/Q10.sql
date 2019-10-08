select title , stars
from Movie join
(
select mID, stars
from
    (
    select mID, avg(stars) as stars
    from Rating
    group by (mID)
    ) Temp1 join
    (
    select max(stars) as stars
        from
        (
        select avg(stars) as stars
        from Rating
        group by (mID)
        )
    ) Temp2 
    using (stars)
)
using (mID)
