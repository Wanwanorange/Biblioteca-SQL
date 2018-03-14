-- How many people have not checked out anything?

select count (distinct member.id)
		from member, checkout_item
		where member.id not in 
		(select distinct member_id from checkout_item);

-- Answer: 37

