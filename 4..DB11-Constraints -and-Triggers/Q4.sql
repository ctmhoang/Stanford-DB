--  Q4
-- 1.0/1.0 point (graded)
-- Write a trigger that automatically deletes students when they graduate, i.e., when their grade is updated to exceed 12.
-- 
--     Your triggers are created in SQLite, so you must conform to the trigger constructs supported by SQLite. 
-- 

create trigger graduate
after update of grade on Highschooler
for each row
when new.grade > 12
begin
delete from Highschooler
where new.grade = grade;
end
