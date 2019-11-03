--  Q5
-- 1/1 point (ungraded)
-- Find the name and grade of the student(s) with the greatest number of friends.
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite.
select
    name,
    grade
from
    Highschooler
where
    ID in (
        select
            ID1
        from(
                select
                    ID1,
                    count(ID2) as Num
                from
                    Friend
                group by
                    (ID1)
            )
        where
            Num in (
                select
                    max(Num)
                from(
                        select
                            count(ID2) as Num
                        from
                            Friend
                        group by
                            (ID1)
                    )
            )
    )
