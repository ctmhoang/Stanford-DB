select title, director
from Movie join (select distinct Mv.director
from Movie Mv,(select director, mID
from Movie) Temp
where Mv.director = Temp.Director and Mv.mID > Temp.mID)
using (director)
