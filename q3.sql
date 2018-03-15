-- What books and movies aren't checked out?
select distinct book.title
	from book
	where not exists
	(select * 
		from checkout_item
		where 
		checkout_item.book_id = book.id)
union
select distinct movie.title
	from movie
	where not exists
	(select * 
		from checkout_item
		where 
		checkout_item.movie_id = movie.id);

-- Answer:
-- 1984
-- Catcher in the Rye
-- Crouching Tiger, Hidden Dragon
-- Domain Driven Design
-- Fellowship of the Ring
-- Lawrence of Arabia
-- Office Space
-- Thin Red Line
-- To Kill a Mockingbird
-- Tom Sawyer