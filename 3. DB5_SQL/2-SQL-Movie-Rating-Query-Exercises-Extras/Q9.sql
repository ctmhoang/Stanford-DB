-- Some directors directed more than one movie. For all such directors, return the titles of all movies directed by them, along with the director name. Sort by director name, then movie title. (As an extra challenge, try writing the query both with and without COUNT.)
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 
select title, director
from Movie join (select distinct Mv.director
from Movie Mv,(select director, mID
from Movie) Temp
where Mv.director = Temp.Director and Mv.mID > Temp.mID)
using (director)
