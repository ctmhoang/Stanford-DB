--  Q8
-- 1.0/1.0 point (ungraded)
-- Find the names of all reviewers who have contributed three or more ratings. (As an extra challenge, try writing the query without HAVING or without COUNT.)
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

-- I DID NOT USE COUNT OR HAVING

select
    name
from
    Reviewer
    join (
        select
            rID
        from
            (
                select
                    Temp.rID,
                    abs(sum(Temp.stars) - round(avg(Temp.stars)) * 3) as margin
                from
                    (
                        select
                            R1.rID,
                            R1.stars,
                            R1.mID
                        from
                            Rating R1,
                            (
                                select
                                    distinct R1.rID
                                from
                                    Rating R1,
                                    Rating R2
                                where
                                    R1.rID = R2.rID
                                    and R1.ratingDate > R2.ratingDate
                            ) Temp
                        where
                            R1.rID = Temp.rID
                    ) Temp
                group by
                    (Temp.rID)
            )
        where
            margin <= 1
    ) lastTemp using (rID)
