--Find the difference between the average rating of movies released before 1980 and the average rating of movies released after 1980. (Make sure to calculate the average rating for each movie, then the average of those averages for movies before 1980 and movies after. Don't just calculate the overall average rating before and after 1980.) 
select abs(avg(aA.aStars) - avg(aB.aStars))
from (select S.mID, aStars, year
from(select mID, avg(stars) as aStars
from Rating
group by (mID)) S ,Movie M
where S.mID = M.mID and year > 1980) aA, 
(select S.mID, aStars, year
from(select mID, avg(stars) as aStars
from Rating
group by (mID)) S , Movie M
Where S.mID = M.mID and year < 1980) aB
