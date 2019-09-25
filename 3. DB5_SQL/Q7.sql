-- For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title. 
select title, maxStars
from Movie M join (select mID, max(stars) as maxStars
from Rating
group by (mID)) as S
using (mID)
order by title
