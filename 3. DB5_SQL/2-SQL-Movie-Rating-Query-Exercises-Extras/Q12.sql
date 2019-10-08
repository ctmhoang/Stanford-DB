select director, title, max(maxStars) as Stars
from    
    (
    select mID, maxStars, director, title
    from
        (
        select mID, max(stars) as maxStars
        from Rating
        group by (mID)
        ) join
        Movie
        using (mID)
        where director is not null
     )
group by (director)    
