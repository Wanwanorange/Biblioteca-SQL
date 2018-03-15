-- 1. Who checked out the book 'The Hobbit’?

select distinct member.id, member.name, book.title
	from member, checkout_item, book
	where 
	checkout_item.member_id = member.id and
	checkout_item.book_id = book.id and
	book.title = 'The Hobbit';

-- -- Answer: 
-- 1|Anand Beck|The Hobbit

