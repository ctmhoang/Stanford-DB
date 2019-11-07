--  Q1
-- 1.0/1.0 point (graded)
-- Write a trigger that makes new students named 'Friendly' automatically like everyone else in their grade. That is, after the trigger runs, we should have ('Friendly', A) in the Likes table for every other Highschooler A in the same grade as 'Friendly'.
--     Your triggers are created in SQLite, so you must conform to the trigger constructs supported by SQLite. 
create trigger makeFriends before
insert
  on Highschooler for each row
  when new.name = 'Friendly' begin
insert into
  Likes
select
  new.ID,
  Highschooler.ID
from
  Highschooler
where
  Highschooler.grade = new.grade;

end
