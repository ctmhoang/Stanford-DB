-- Some reviewers didn't provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date. 
select name
from Reviewer Re , (select rID from Rating where ratingDate is null) as Ra
Where Re.rID = Ra.rID
