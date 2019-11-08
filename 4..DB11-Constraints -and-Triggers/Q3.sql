--  Q3
-- 1.0/1.0 point (graded)
-- Write one or more triggers to maintain symmetry in friend relationships. Specifically, if (A,B) is deleted from Friend, then (B,A) should be deleted too. If (A,B) is inserted into Friend then (B,A) should be inserted too. Don't worry about updates to the Friend table.
-- 
--     Your triggers are created in SQLite, so you must conform to the trigger constructs supported by SQLite.
--     To create more than one trigger, separate the triggers with a vertical bar (|). 
-- 

create trigger addFS
after insert on Friend
for each row
begin
insert into Friend values (new.ID2, new.ID1);
end
|
create trigger delFS
after delete on Friend
for each row
begin
delete from Friend
where (ID1 = old.ID2 and ID2 = old.ID1);
end
