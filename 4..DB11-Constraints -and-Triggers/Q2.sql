--  Q2
-- 1.0/1.0 point (graded)
-- Write one or more triggers to manage the grade attribute of new Highschoolers. If the inserted tuple has a value less than 9 or greater than 12, change the value to NULL. On the other hand, if the inserted tuple has a null value for grade, change it to 9.
--     Your triggers are created in SQLite, so you must conform to the trigger constructs supported by SQLite.
--     To create more than one trigger, separate the triggers with a vertical bar (|). 
create trigger setGrade
after
insert
  on Highschooler for each row
  when new.grade is null begin
update
  Highschooler
set
  grade = 9
where
  Highschooler.ID = new.ID;

end | create trigger invalidGrade
after
insert
  on Highschooler for each row
  when new.grade < 9
  or new.grade > 12 begin
update
  Highschooler
set
  grade = null
where
  Highschooler.ID = new.ID;

end
