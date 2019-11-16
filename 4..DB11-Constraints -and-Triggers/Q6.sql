--  Q6
-- 1.0/1.0 point (graded)
-- Write a trigger to enforce the following behavior: If A liked B but is updated to A liking C instead, and B and C were friends, make B and C no longer friends. Don't forget to delete the friendship in both directions, and make sure the trigger only runs when the "liked" (ID2) person is changed but the "liking" (ID1) person is not changed.
--     Your triggers are created in SQLite, so you must conform to the trigger constructs supported by SQLite. 
create trigger loveTriangle
after
update
  of ID2 on Likes for each row
  when exists (
    select
      ID1
    from
      Friend
    where
      new.ID2 = ID1
      and old.ID2 = ID2
  )
  and old.ID1 = new.ID1 begin
delete from
  Friend
where
  (
    new.ID2 = ID1
    and old.ID2 = ID2
  )
  or (
    new.ID2 = ID2
    and old.ID2 = ID1
  );

end
