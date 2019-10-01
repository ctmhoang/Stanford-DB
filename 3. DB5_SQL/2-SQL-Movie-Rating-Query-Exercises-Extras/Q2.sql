--  Q2
-- 1.0/1.0 point (ungraded)
-- For any rating where the reviewer is the same as the director of the movie, return the reviewer name, movie title, and number of stars.
-- 
-- Note: Your queries are executed using SQLite, so you must conform to the SQL constructs supported by SQLite. 

 select name, title, stars
 from Reviewer, Movie, Rating
 where name = director and Rating.mID = Movie.mID and Reviewer.rID = Rating.rID
