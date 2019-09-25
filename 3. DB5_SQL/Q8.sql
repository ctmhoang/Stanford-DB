 --For each movie, return the title and the 'rating spread', that is, the difference between highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest, then by movie title. 
select title , rSpread
from Movie M join (select mID,(max(stars) - min(stars)) as rSpread
from Rating
group by (mID)) as S using (mID)
order by rSpread desc, title
