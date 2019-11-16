--  Q5
-- 1.0/1.0 point (graded)
-- Write a trigger that automatically deletes students when they graduate, i.e., when their grade is updated to exceed 12 (same as Question 4). In addition, write a trigger so when a student is moved ahead one grade, then so are all of his or her friends.
--     Your triggers are created in SQLite, so you must conform to the trigger constructs supported by SQLite.
--     To create more than one trigger, separate the triggers with a vertical bar (|). 
create trigger graduate
after
update
  of grade on Highschooler for each row
  when new.grade > 12 begin
delete from
  Highschooler
where
  new.grade = grade;

end | create trigger upGrade
after
update
  of grade on Highschooler for each row
  when new.grade = old.grade + 1 begin
update
  Highschooler
set
  grade = grade + 1
where
  ID in (
    select
      ID2
    from
      Friend
    where
      ID1 = new.ID
  );

end
