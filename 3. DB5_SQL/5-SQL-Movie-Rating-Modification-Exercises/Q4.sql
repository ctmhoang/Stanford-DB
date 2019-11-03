--  Q4
-- 1.0/1.0 point (graded)
-- Remove all ratings where the movie's year is before 1970 or after 2000, and the rating is fewer than 4 stars. 

delete from Rating
where mID in (
    select distinct Ra.mID
    from Movie Mv, Rating Ra
    where Mv.mID = Ra.mID 
        and (year > 2000 or year < 1970)
) and stars < 4;
