--  Q4
-- 1/1 point (ungraded)
-- Find the number of students who are either friends with Cassandra or are friends of friends of Cassandra. Do not count Cassandra, even though technically she is a friend of a friend.
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite.
select
    count(distinct F1.ID2) + count(distinct F2.ID2)
from
    Friend F1,
    Friend F2,
    (
        select
            ID
        from
            Highschooler
        where
            name = "Cassandra"
    )
where
    F1.ID1 = ID
    and F1.ID2 = F2.ID1
    and F2.ID2 <> ID
