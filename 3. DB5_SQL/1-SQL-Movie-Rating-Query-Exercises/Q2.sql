-- Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order. 
select distinct year
from Movie join Rating using (mID)
where (Rating.stars = 4 or Rating.stars = 5)
