-- For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewer's name and the title of the movie. 
select name, title
from Movie M ,(select R1.mID, R1.rID
from Rating R1 join Rating R2 using (rID, mID)
where R1.ratingDate > R2.ratingDate and R1.stars > R2.stars) S, Reviewer R
where M.mID = S.mID and R.rID = S.rID
