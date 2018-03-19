-- Who has checked out more than 1 item? 
-- Tip: Research the GROUP BY syntax.

-- select member.name, sum(count(book.title), count(movie.title)) 

select member.name
 from checkout_item join member
	on checkout_item.member_id = member.id
	group by member.name
	having count(member.name) > 1;

-- Answer:
-- Anand Beck
-- Frank Smith



