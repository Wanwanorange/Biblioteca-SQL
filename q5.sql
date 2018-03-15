-- Who has checked out more than 1 item? 
-- Tip: Research the GROUP BY syntax.

select member.name, book.title
	from member, book, checkout_item
	where 
	checkout_item.member_id = member.id and
	checkout_item.book_id = book.id 
union
select member.name, movie.title
	from member, movie, checkout_item
	where 
	checkout_item.member_id = member.id and
	checkout_item.movie_id = movie.id
	group by member.name;
