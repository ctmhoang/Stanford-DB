select H1.name, H1.grade, H2.name, H2.grade
from Likes L1, Likes L2, Highschooler H1, Highschooler H2
where L1.ID1 = L2.ID2 and L2.ID1 = L1.ID2
and L1.ID1 = H1.ID
and L1.ID2 = H2.ID
and H1.name < H2.name
