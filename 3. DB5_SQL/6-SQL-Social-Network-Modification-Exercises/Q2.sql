-- Q2
--1.0/1.0 point (graded)
--If two students A and B are friends, and A likes B but not vice-versa, remove the Likes tuple. 

delete from Likes
where ID1 in (
    select L.ID1
    from Likes L, Friend F
    where F.ID1 = L.ID1
        and F.ID2 = L.ID2
    except
    select L1.ID1
    from Likes L1, Likes L2
    where L1.ID1 = L2.ID2
        and L1.ID2 = L2.ID1
    
    )
