-- 1. Who checked out the book 'The Hobbit’?

select distinct member.id, member.name, book.title
	from member, checkout_item, book
	where 
	checkout_item.member_id = member.id and
	book.title = 'The Hobbit';

-- -- Answer: 
-- 1|Anand Beck|The Hobbit
-- 2|Yaxuan Evans|The Hobbit
-- 6|Frank Smith|The Hobbit
-- 7|Sneha Carmack|The Hobbit
-- 8|Julian Listov|The Hobbit

