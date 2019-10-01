-- Write a query to return the ratings data in a more readable format: reviewer name, movie title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars. 
select name, title, stars, ratingDate
from Movie M join Rating Ra join Reviewer Re
on M.mID = Ra.mID and Ra.rID = Re.rID
order by name, title, stars
