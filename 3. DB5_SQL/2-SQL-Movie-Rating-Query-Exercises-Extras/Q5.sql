--  Q5
-- 1.0/1.0 point (ungraded)
-- For all pairs of reviewers such that both reviewers gave a rating to the same movie, return the names of both reviewers. Eliminate duplicates, don't pair reviewers with themselves, and include each pair only once. For each pair, return the names in the pair in alphabetical order.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

select name1, name2
from (select distinct Re1.name as name1, Re2.name as name2
from Reviewer Re1, Reviewer Re2, Rating Ra1, Rating Ra2
where Ra1.rID <> Ra2.rID and Ra1.mID = Ra2.mID and Ra1.rID = Re1.rID and Ra2.rID = Re2.rID) Pairs
where name1 < name2
