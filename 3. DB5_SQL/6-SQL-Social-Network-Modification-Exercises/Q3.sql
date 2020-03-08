insert into Friend
select F1.ID1, F2.ID2
from Friend F1, Friend F2
where F1.ID2 = F2.ID1
    and F1.ID1 != F2.ID2
except
select * 
from Friend
